package main

import (
	"database/sql"
	"fmt"

	"github.com/carautenbach/bun"
	"github.com/carautenbach/bun/dialect/sqlitedialect"
	"github.com/carautenbach/bun/driver/sqliteshim"
)

type Item struct {
	ID int64 `bun:",pk,autoincrement"`
}

func main() {
	sqldb, err := sql.Open(sqliteshim.ShimName, "file::memory:?cache=shared")
	if err != nil {
		panic(err)
	}

	db := bun.NewDB(sqldb, sqlitedialect.New())
	defer db.Close()

	q := db.NewSelect().Model((*Item)(nil)).Where("id > ?", 0)

	fmt.Println(q.String())
}
