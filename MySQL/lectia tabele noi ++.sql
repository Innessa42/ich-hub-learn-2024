-- costumers1;
use 310524ptm_inna;

create table Customers (
customer_id integer not null auto_increment primary key,
first_name varchar(30),
last_name varchar(30),
street varchar(40),
post_code varchar(10),
city varchar(40),
country varchar(40),
e_mail varchar(40),  
registration_date date);
describe Customers;

Create Table Orders (
Customer_id int, 
order_creation_date date,
item_id int, 
description varchar(100),
link_to_photo varchar(50),
price numeric(8,2));

-- alter table " 310524ptm_inna" "customers"
-- Change Column "id" "id" int not null auto_increment;
insert into Customers ( first_name ,
last_name,  
street,
post_code,
city,
country ,
e_mail ,  
registration_date)
values ('Valentyn', 'Karpenko', 'my_str', '21209', 'Kiyv', 'Ukraine', 'mail@gmail.com', '2024-06-19'),
('Vasya', 'Pipkin', 'my_aw', '45509', 'Dnipro', 'Ukraine', 'user1@gmail.com', '2024-06-18'),
('Puper', 'Mega', 'way_one', '99054', 'Herson', 'Ukraine', 'nnm@gmail.com', '2024-06-20');

select * from Customers;

select * from Orders;
INSERT INTO Orders(customers_id,order_creation_date,item_id,description,link_to_photo, price)
values (1,"2024-06-20",1,"kjlk","www.amazon/24",100);
insert into orders(
customers_id,
order_creation_date,
item_id,
description,
link_to_photo,
price)
values(2, '2024-06-19', 1,'kjlk','www.amazon/24',100),
(2, '2024-06-20', 2,'hjhj','www.amazon/23',56),
(1, '2024-06-21', 2,'hjhj','www.amazon/23',56),
(3, '2024-06-20', 1,'kjlk', 'www.amazon/24',100),
(3, '2024-06-19', 2,'hjhj','www.amazon/23',56),
(2, '2024-06-20', 3,'thrttz','www.amazon/22',70),
(1, '2024-06-21', 3,'thrttz','www.amazon/22',70),
(3, '2024-06-20', 3,'thrttz','www.amazon/22',70);

select * from Orrders;
alter table customers
 add last_modified datetime default now();
 

insert into  Customers( 
first_name, last_name, street, post_code, city, country, e_mail, registration_date)
values
('Mari','Savchuk' 'Sunystreet', '01111', 'Warsaw', 'Poland', 'mari@gmail.com', '2024-06-20');

alter table Orders 
add discounter_price numeric(8,2);
update Orders set discounter_price = 0.9 * price;
set SQL_SAFE_UPDATES = 0;


SELECT customer_id, first_name, last_name
FROM Customers
WHERE e_mail LIKE '%@gmail.com';

 select * from Orders;
 select *, case when price < 60 then "Low"
 
 select * from Customers;Orders
 when price between 60 and 90 then "Mid"
 else"High"
 end as Status
 from Orders;
select * 
from Customers 
where city like "Dnipro";


