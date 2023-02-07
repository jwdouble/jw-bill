package server

import (
	"context"
	"jw.bill/orm"
	"jw.lib/logx"
	"jw.lib/timex"
)

var ctx = context.Background()

func ListBillToday() {
	rows, err := orm.Q.ListBillToday(ctx, timex.BeginOfDay())
	if err != nil {
		logx.Errorf(err, "sql ListBillToday error: %v", err)
	}
	_ = rows
}

func GetBillMonth() {
}

func GetBillYear() {
}
