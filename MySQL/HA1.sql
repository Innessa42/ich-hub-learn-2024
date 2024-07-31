
SELECT * FROM hr.employees;
SELECT STR_TO_DATE('25,07,2020', '%d,%m,%Y');
SELECT STR_TO_DATE('2013-03-17T14:25:39.123', '%Y-%m-%dT%H:%i:%s.%f');
SELECT DATE_FORMAT(NOW(), '%Y_%m_%d  %H - %i - %s');
select now();
SELECT DATEDIFF('2023-02-01', '2023-01-01');
-- DATEDIFF Помогает вычислить разницу между датами в днях.
SELECT TIMESTAMPDIFF(DAY, '2003-02-01', '2003-05-01');
SELECT TIMESTAMPDIFF(MONTH, '2003-02-01', '2003-05-01');
SELECT TIMESTAMPDIFF(MINUTE, '2003-02-01', '2003-05-01 12:05:55');
SELECT TIMESTAMPDIFF(WEEK, '2003-02-18', '2003-05-01');
-- Используя базу данных hr, написать запрос, который отображает сотрудников,
--  нанятых в 2005 году.
SELECT * FROM hr.employees
where hire_date between
'2005-01-01' and
'2005-12-31';
SELECT * FROM hr.employees
where hire_date between
str_to_date('01-2005-01','%d-%Y-%m')  and
str_to_date('31-2005-12','%d-%Y-%m');
-- Написать запрос, который отображает среднюю AMT (сумма заказа) в 2022 году
Use shop;
SELECT avg(AMT) as avg_amount
FROM ORDERS
WHERE date_format(ODATE, '%Y') = 2022;
SELECT avg(AMT) as avg_amount,  ODATE
from ORDERS
WHERE ODATE between str_to_date('2022-01-01', '%Y-%m-%d')  and str_to_date('2022-12-31', '%Y-%m-%d');
-- date_format(ODATE, '%Y') = 2022;
SELECT * FROM hr.employees;
SELECT NOW() + INTERVAL 1 DAY;
SELECT NOW() + INTERVAL 1 HOUR;
SELECT *
FROM table
WHERE datetime_column > NOW() - INTERVAL 1 WEEK;
SELECT DATE_ADD('2001-01-01', INTERVAL 6 MONTH);
SELECT DATE_ADD('2020-01-01', INTERVAL -1 YEAR);
SELECT SUBDATE('2020-01-01', INTERVAL 6 MONTH) AS sub_date;
SELECT DATE_SUB('2020-01-01', INTERVAL 6 MONTH) AS date_sub;
-- SELECT STR_TO_DATE(column_name, '%Y-%m-%d'), ...
-- FROM...
-- ....;
SELECT WEEKDAY('2024-07-09');
SELECT LAST_DAY('2024-07-09');
SELECT LAST_DAY(NOW());
SELECT EXTRACT(WEEK FROM '2024-07-09');
SELECT EXTRACT(DAY FROM '2024-07-09') - INTERVAL 1 DAY;
Use hr;
-- Определите месяц, в который чаще всего принимают на работу
select
EXTRACT(MONTH from hire_date) as month1,
count(*) as cnt
from
employees e
group by month1
ORDER by cnt desc
limit 1;
-- Выведите количество заказов по месяцам (номер месяца - количество 
-- заказов в этом месяце)
use shop;
SELECT
monthname(ODATE)  as monts_name, count(ORDER_ID) as count_f
FROM ORDERS group by monts_name ;
-- Выведите список заказов в марте
SELECT * FROM ORDERS
WHERE EXTRACT(month from ODATE) = 3;
select *
from ORDERS
where monthname(ODATE) = 'March';
-- Определить какие из покупок были совершены в интервале от 10 апреля 2022 до 10 мая 2022 года
select *
from ORDERS
where ODATE between '2022-04-10' and '2022-05-10';
select * , MONTHNAME(ODATE) as month_name
from ORDERS
where ODATE between '2022-04-10' and '2022-05-10';
-- Напишите SQL-запрос для анализа покупок, совершенных в июне, и определите
-- количество покупок для каждого продавца.
-- Результат запроса должен содержать идентификатор продавца и количество
-- покупок, сделанных им в июне.
SELECT SELL_ID, count(ORDER_ID) as ord_count
FROM ORDERS
WHERE MONTH(ODATE) = 6
group by SELL_ID;
select SELL_ID, count(ORDER_ID) as orders_count, monthname(ODATE) as month_name
from ORDERS
where month(ODATE) = 6
group by SELL_ID;
-- Напишите SQL-запрос для анализа средней стоимости покупок, совершенных в 
-- марте, и определите, какие продавцы имеют
-- самую высокую и самую низкую среднюю стоимость покупок в этом месяце.
-- Обязательно выведите имя продавца.
select s.sname, avg(o.amt), min(o.amt) as min_amt, max(o.amt) as max_amt
from ORDERS as o
join SELLERS as s
on o.sell_id = s.sell_id
where month(o.odate) = 3
group by s.sname;
-- Напишите SQL-запрос для анализа покупок, совершенных во вторник, и предоставьте информацию о каждом заказе,
-- включая сумму, дату, имя покупателя и имя продавца.
select O.ODATE, O.AMT , S.SNAME , C.CNAME
from ORDERS as O
join SELLERS as S
on S.SELL_ID= O.SELL_ID
join CUSTOMERS as C
on C.CUST_ID=O.CUST_ID
where weekday(O.ODATE)= 1
;
-- Определить, сколько покупок было совершено в каждый месяц. Отсортировать строки в порядке возрастания
-- количества покупок. Вывести два поля - номер месяца и количество покупок
select
extract(MONTH from ODATE) as nam_mon,
count(ORDER_ID) as c
from ORDERS
group by nam_mon
order by c