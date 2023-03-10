create table bill
(
    id      serial primary key,
    name    varchar(64) not null,
    t_type  int         not null,
    day     date        not null,
    b_type  int         not null,
    amount  int         not null,
    tag_ids int[]      not null
);
comment on table bill is '账单';
comment on column bill.t_type is '时间类型 1:日账单 2:月账单 3:年账单';
comment on column bill.b_type is '账单类型 1:支出 2:收入';
comment on column bill.amount is '金额';
comment on column bill.tag_ids is '标签id';


create table bill_tag
(
    id   int primary key,
    name text not null
);
comment on table bill_tag is '账单标签';

insert into bill_tag (id,name) VALUES (1,'吃喝');
insert into bill_tag (id,name) VALUES (2,'交通');

