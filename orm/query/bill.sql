-- name: CreateBill :exec
insert into bill
(t_type, name, day, b_type, amount, tag_ids)
VALUES
(@t_type, @name, @day, @b_type, @amount, @tag_ids);

-- name: ListBillToday :many
select *
from bill
where day = @day and t_type = 1;

-- name: ListBillMonth :many
select *
from bill
where date_trunc('month', day) = @_month and t_type = 2;

-- name: CountBillByDay :one
select b1.count as count1, b1.amount as amount1, b2.count as count2, b2.amount as amount2
from
    (select count(*) as count, sum(amount) as amount
     from bill t1
     where t1.day = @day and t1.t_type = 1 and t1.b_type = 1) as b1,
    (select count(*) as count, sum(amount) as amount
     from bill t2
     where t2.day = @day and t2.t_type = 1 and t2.b_type = 2) as b2;
