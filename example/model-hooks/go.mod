module github.com/carautenbach/bun/example/model-hooks

go 1.18

replace github.com/carautenbach/bun => ../..

replace github.com/carautenbach/bun/dbfixture => ../../dbfixture

replace github.com/carautenbach/bun/extra/bundebug => ../../extra/bundebug

replace github.com/carautenbach/bun/dialect/sqlitedialect => ../../dialect/sqlitedialect

replace github.com/carautenbach/bun/driver/sqliteshim => ../../driver/sqliteshim

require (
	github.com/carautenbach/bun v1.0.9
	github.com/carautenbach/bun/dialect/sqlitedialect v1.0.9
	github.com/carautenbach/bun/driver/sqliteshim v1.0.9
	github.com/carautenbach/bun/extra/bundebug v1.0.9
	github.com/davecgh/go-spew v1.1.1
)

require (
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/kballard/go-shellquote v0.0.0-20180428030007-95032a82bc51 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/mattn/go-sqlite3 v1.14.16 // indirect
	github.com/remyoudompheng/bigfft v0.0.0-20220927061507-ef77025ab5aa // indirect
	github.com/tmthrgd/go-hex v0.0.0-20190904060850-447a3041c3bc // indirect
	github.com/vmihailenco/msgpack/v5 v5.3.5 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	golang.org/x/mod v0.7.0 // indirect
	golang.org/x/sys v0.4.0 // indirect
	golang.org/x/tools v0.5.0 // indirect
	lukechampine.com/uint128 v1.2.0 // indirect
	modernc.org/cc/v3 v3.40.0 // indirect
	modernc.org/ccgo/v3 v3.16.13 // indirect
	modernc.org/libc v1.22.2 // indirect
	modernc.org/mathutil v1.5.0 // indirect
	modernc.org/memory v1.5.0 // indirect
	modernc.org/opt v0.1.3 // indirect
	modernc.org/sqlite v1.20.2 // indirect
	modernc.org/strutil v1.1.3 // indirect
	modernc.org/token v1.1.0 // indirect
)
