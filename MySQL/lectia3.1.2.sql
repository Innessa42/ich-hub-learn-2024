create database 310524ptm_inna;
use 310524ptm_inna;

drop table if exists goods;

Create Table goods (
id int not null auto_increment primary key,
name varchar(20),
quantity int,
in_stock char(1));

describe goods;

insert into goods (name,quantity, in_stock)
values ( "velosiped", 10, "y");

select * from goods;

insert into goods (name,quantity, in_stock)
values ( "car", 5, "y"), ("skatebord", 10, "y"), ("scuter", 3, "y");

select*from goods;

update goods
set quantity = 15
where name = "велосипед";
set SQL_SAFE_UPDATES=0; 
 
select * from goods;
drop view if exists v_table1;

create view v_table1 as 
select * from goods 
where quantity > 10;
select * from v_table1;
