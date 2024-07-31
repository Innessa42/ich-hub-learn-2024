

select
d.department_name,
count(e.employee_id) as emp_count
from employees as e
inner join departments as d
on e.department_id = d.department_id
where d.department_name not in ('Shipping', 'Sales')
group by d.department_name
having emp_count > 2;

 use shop;
select
ORDER_ID,
ODATE,
AMT,
sum(AMT) over() as total_amount,
round(AMT / sum(AMT) over(), 3) as percentage_range
from ORDERS;
 
 select * from CUSTOMERS;

select
CITY,
avg(RATING) over (PARTITION BY CITY) as average_rating
from CUSTOMERS;

select
CITY,
avg(RATING) as average_rating
from CUSTOMERS
group by CITY;
 -- Вывести информацию о каждом заказе и максимальную сумму 
 -- заказа в том же месяце для каждой строки.
 use shop;
 SELECT
 ORDER_ID, AMT, ODATE, 
 MAX(AMT) OVER (partition by extract(month from ODATE)) as max_sum
 from ORDERS;
-- sau varianta lui Vladimir
select 
ORDER_ID,
amt,
ODATE,
DATE_FORMAT(ODATE, '%Y-%m') as my,
max(AMT) OVER(PARTITION BY DATE_FORMAT(ODATE, '%Y-%m')) as max_sum 
from ORDERS o
order by max_sum DESC;
-- Для более полного понимания практической значимости прошлого запроса,
--  добавим подсчет относительного вклада каждого заказа в общий объем
--  продаж месяца.

select 
ORDER_ID,
amt,
ODATE,
DATE_FORMAT(ODATE, '%Y-%m') as my,
max(AMT) OVER(PARTITION BY DATE_FORMAT(ODATE, '%Y-%m')) as max_sum 
amt / sum(AMT) OVER(PARTITION BY DATE_FORMAT(ODATE, '%Y-%m')) * 100 as ord_prctg
from ORDERS o
order by max_sum DESC;

select 
ORDER_ID,
amt,
ODATE,
DATE_FORMAT(ODATE, '%Y-%m') as my,
max(AMT) OVER(PARTITION BY DATE_FORMAT(ODATE, '%Y-%m')) as max_sum, 
amt / max(AMT) OVER(PARTITION BY DATE_FORMAT(ODATE, '%Y-%m')) * 100 as ord_prctg
from ORDERS o
order by max_sum DESC;

-- Вывести список продавцов с указанием общей суммы их продаж. Отсортировать 
-- продавцов по убыванию суммы продаж.

select s.SNAME s, SELL_ID, o.AMT,
from SELLERS as s
left join ORDERS as o on o.SELL_ID = s.SELL_ID;

select s.SNAME s, SELL_ID, o.AMT,
sum(o.AMT) over (partition by o.SELL_ID) as ordersSUM
from SELLERS as s
left join ORDERS as o on o.SELL_ID = s.SELL_ID
order by orderSUM desc;

select s.SNAME s, SELL_ID, o.AMT,
	if(sun(o.AMT) over (partition by o.SELL_ID) is null, 0, sum(o.AMT) over (partition by o.SELL_ID)) as ordersSUM
from SELLERS as s
left join ORDERS as o on o.SELL_ID = s.SELL_ID
order by orderSUM desc;

select s.SNAME, s.SELL_ID ,
	if (o.AMT is null, 0 ,o.AMT) as AMT,
	if(sum(o.AMT) over (partition by o.SELL_ID) is null, 0, sum(o.AMT) over (partition by o.SELL_ID))as ordersSum
from SELLERS as s
left join ORDERS as o on o.SELL_ID = s.SELL_ID
order by ordersSum desc;

select 
    *,
    rank() over (oreder BY CUST_ID ) as rank_id
from ORDERS;

select 
    *,
    rank() over (oreder BY CUST_ID ) as rank_id
from ORDERS;

SELECT 
ORDER_ID,
ODATE,
AMT,
SUM(AMT) OVER (ORDER BY ODATE) AS running_total,
SUM(AMT) OVER (ORDER BY ODATE DESC) AS running_total_desc
FROM ORDERS;

select
*,
rank() over (PARTITION BY CUST_ID) as rank_id
from ORDERS;


select
*,
rank() over (ORDER BY CUST_ID, SELL_ID DESC) as rank_id,
dense_rank() over (ORDER BY CUST_ID DESC) as dense_rank_id
from ORDERS;

select
*,
rank() over (ORDER BY CUST_ID, SELL_ID DESC) as rank_id,
dense_rank() over (ORDER BY CUST_ID DESC) as dense_rank_id,
NTILE(5) over (ORDER BY CUST_ID DESC) as logic_group_id
from ORDERS;

select
*
from ( select
*,
rank() over (ORDER BY CUST_ID, SELL_ID DESC) as rank_id,
dense_rank() over (ORDER BY CUST_ID DESC) as dense_rank_id,
NTILE(5) over (ORDER BY CUST_ID DESC) as logic_group_id
from ORDERS
) as t1
group by logic_group_id;
-- произведите ранжирование департаментов по средней зарплате.
use hr;
select 
	D.department_name, avg(E.salary) as avg_salary,
    dense_rank() over (order by avg(E.salary)) as dep_rank
from departments as D
inner join employees as E
on D.department_id = E.department_id
group by D.department_name;

select 
	D.department_name, avg(E.salary) as avg_salary,
    dense_rank() over (order by avg(E.salary)DESC) as dep_rank
from departments as D
inner join employees as E
on D.department_id = E.department_id
group by D.department_name;
-- hociu tolico 5 u covo samaia visocaia zarplata 
select *
from
(
select
	D.department_name, avg(E.salary) as avg_salary,
    dense_rank() over (order by avg(E.salary)DESC) as dep_rank
from departments as D
inner join employees as E
on D.department_id = E.department_id
group by D.department_name)
as t1
where dep_rank < 5;

-- Выведите топ-3 сотрудников с наивысшей зарплатой в каждом департаменте.

select 
department_id,
first_name,
salary,
DENSE_RANK () over(partition by department_id order by salary desc) as salrag
from employees;
 -- a teperi tolico top-3 sotrudnica
 select * from
 (select 
department_id,
first_name,
salary,
DENSE_RANK () over(partition by department_id order by salary desc) as salrag
from employees) as t1
where salrag <= 3
order by department_id;