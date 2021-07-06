create table actor
(actor_id smallint(5) not null primary key,
 first_name varchar(5) not null comment '名字',
 last_name varchar(45) not null comment '姓氏',
 last_update date not null comment '日期'
 );