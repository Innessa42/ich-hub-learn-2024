create table goods2 (
id Int primary key,
title varchar(30),
quantity int check (quantity >0),
in_stock char(1) check (In_stock IN ('y', 'n'))
);

select * from goods2;

describe goods2;

show create table goods2;

insert into goods2 (
id, 
title,
quantity,
in_stock)
values (30, `pen`, 45, `y`);

select * from goods2;

insert into goods2 (`id`,
			 `title`, `quantity`, `in_stock`) 
     values (30, 'Pensil', 50, 'Y');
     
insert into goods2 (`id`,
			 `title`, `quantity`, `in_stock`) 
     values (31, 'Pensil123456789012345678901234567890', 50, 'Y');
     
insert into goods2 (`id`,
			 `title`, `quantity`, `in_stock`) 
     values (31, 'Pensil', -50, 'Y');
     
alter table goods2
add price int default 0;

select * from goods2; 

insert into goods2 (
id, 
title,
quantity,
in_stock
price)
id, title, quantity, in_stock, price)
values (32, 'book', 60,  'y', 150),
(33, 'folder', 70,  'y', 20),
(34, 'paper', 75,  'y', 48),
(35, 'magazine', 80,  'y', 92),
(36, 'notebook', 85,  'y', 73),
(37, 'paper_clips', 90,  'y', 10),
(38, 'stapler', 95,  'y', 100),
(39, 'hole_puncher', 98,  'y', 135);

select * from goods;
select name  from goods
union all
select title from goods2;
CREATE TABLE goods2 (
  id int not null auto_increment primary key,
  title varchar(30),
  quantity int,
  in_stock char(1),
  check (quantity > 0),
  check (in_stock in ('y', 'n'))
);
insert into goods2 (
good_id, 
title,
quantity,
in_stock,
prise)
values (38, 'Велосипед', 20, 'y', 200);
select name from goods
union 
select title from goods2;

select id, name, quantity, in_stock, null as price
from goods
union all
 select * from goods2;

