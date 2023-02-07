package orm

import (
	"embed"
	"jw.bill/orm/gen"

	"jw.lib/migrate"
	"jw.lib/sqlx"
)

//go:embed migration/*.sql
var migration embed.FS

var Q *gen.Queries

func init() {
	cm := sqlx.PGConfigMap
	cm["dbname"] = "jw"
	sqlx.Register(sqlx.Driver, cm)
	migrate.NewWithFs(migration, "migration", sqlx.GetSqlOperator())
}

func Register() {
}
