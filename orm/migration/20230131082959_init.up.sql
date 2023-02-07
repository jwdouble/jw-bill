create table bill(
                     ts bigint primary key,
                     t_type int not null,
                     month date not null,
                     year date not null,
                     b_type int not null,
                     amount int not null,
                     tags text[] not null
);


comment on table bill is '账单';
comment on column bill.ts is '时间戳 主键';
comment on column bill.t_type is '时间类型 1:日账单 2:月账单 3:年账单';
comment on column bill.month is '月份';
comment on column bill.year is '年份';
comment on column bill.b_type is '账单类型 1:支出 2:收入';
comment on column bill.amount is '金额';
comment on column bill.tags is '标签';

create table bill_tag(
                         id serial primary key,
                         name text not null
);
comment on table bill_tag is '账单标签';
