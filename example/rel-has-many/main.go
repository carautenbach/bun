package main

import (
	"context"
	"database/sql"
	"fmt"

	"github.com/carautenbach/bun"
	"github.com/carautenbach/bun/dialect/sqlitedialect"
	"github.com/carautenbach/bun/driver/sqliteshim"
	"github.com/carautenbach/bun/extra/bundebug"
)

type Profile struct {
	ID     int64 `bun:",pk,autoincrement"`
	Lang   string
	Active bool
	UserID int64
}

// User has many profiles.
type User struct {
	ID       int64 `bun:",pk,autoincrement"`
	Name     string
	Profiles []*Profile `bun:"rel:has-many,join:id=user_id"`
}

func main() {
	ctx := context.Background()

	sqldb, err := sql.Open(sqliteshim.ShimName, "file::memory:?cache=shared")
	if err != nil {
		panic(err)
	}

	db := bun.NewDB(sqldb, sqlitedialect.New())
	defer db.Close()

	db.AddQueryHook(bundebug.NewQueryHook(bundebug.WithVerbose(true)))

	if err := createSchema(ctx, db); err != nil {
		panic(err)
	}

	user := new(User)
	if err := db.NewSelect().
		Model(user).
		Column("user.*").
		Relation("Profiles", func(q *bun.SelectQuery) *bun.SelectQuery {
			return q.Where("active IS TRUE")
		}).
		OrderExpr("user.id ASC").
		Limit(1).
		Scan(ctx); err != nil {
		panic(err)
	}
	fmt.Println(user.ID, user.Name, user.Profiles[0], user.Profiles[1])
	// Output: 1 user 1 &{1 en true 1} &{2 ru true 1}
}

func createSchema(ctx context.Context, db *bun.DB) error {
	models := []interface{}{
		(*User)(nil),
		(*Profile)(nil),
	}
	for _, model := range models {
		if _, err := db.NewCreateTable().Model(model).Exec(ctx); err != nil {
			return err
		}
	}

	users := []*User{
		{ID: 1, Name: "user 1"},
		{ID: 2, Name: "user 2"},
	}
	if _, err := db.NewInsert().Model(&users).Exec(ctx); err != nil {
		return err
	}

	profiles := []*Profile{
		{ID: 1, Lang: "en", Active: true, UserID: 1},
		{ID: 2, Lang: "ru", Active: true, UserID: 1},
		{ID: 3, Lang: "md", Active: false, UserID: 1},
	}
	if _, err := db.NewInsert().Model(&profiles).Exec(ctx); err != nil {
		return err
	}

	return nil
}
