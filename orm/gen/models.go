// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.16.0

package gen

import (
	"time"
)

// 账单
type Bill struct {
	ID int32
	// 时间类型 1:日账单 2:月账单 3:年账单
	TType int32
	Day   time.Time
	// 账单类型 1:支出 2:收入
	BType int32
	// 金额
	Amount int32
	// 标签id
	TagIds []string
}

// 账单标签
type BillTag struct {
	ID   int32
	Name string
}
