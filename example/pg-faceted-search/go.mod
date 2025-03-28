module github.com/carautenbach/bun/example/pg-faceted-search

go 1.18

replace github.com/carautenbach/bun => ../..

replace github.com/carautenbach/bun/dbfixture => ../../dbfixture

replace github.com/carautenbach/bun/extra/bundebug => ../../extra/bundebug

replace github.com/carautenbach/bun/driver/pgdriver => ../../driver/pgdriver

replace github.com/carautenbach/bun/dialect/pgdialect => ../../dialect/pgdialect

require (
	github.com/carautenbach/bun v1.0.9
	github.com/carautenbach/bun/dbfixture v1.0.9
	github.com/carautenbach/bun/dialect/pgdialect v1.0.9
	github.com/carautenbach/bun/driver/pgdriver v1.0.9
	github.com/carautenbach/bun/extra/bundebug v1.0.9
	github.com/davecgh/go-spew v1.1.1
)

require (
	github.com/fatih/color v1.13.0 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/tmthrgd/go-hex v0.0.0-20190904060850-447a3041c3bc // indirect
	github.com/vmihailenco/msgpack/v5 v5.3.5 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	golang.org/x/crypto v0.5.0 // indirect
	golang.org/x/sys v0.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	mellium.im/sasl v0.3.1 // indirect
)
