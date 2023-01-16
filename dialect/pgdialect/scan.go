package pgdialect

import (
	"reflect"

	"github.com/carautenbach/bun/schema"
)

func scanner(typ reflect.Type) schema.ScannerFunc {
	return schema.Scanner(typ)
}
