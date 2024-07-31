SELECT *
FROM employees
WHERE hire_date > NOW() - INTERVAL 1 YEAR;

select job_id, department_id, count(employee_id) as emp_count
from employees
where department_id between 50 and 90 -- первичный фильтр
group by department_id
having emp_count > 1; -- вторичный фильтр

-- Поменять запрос так, чтобы выводилось среднее количество городов в стране. Подсказка: разделите задачу на несколько подзадач.
--  Например, сначала вывести код страны и количество городов в каждой стране.  
-- Затем сделать join получившегося результата с запросом, где высчитывается среднее от количества городов. 
-- Потом добавить join, который добавит имена стран, вместо кода.

select floor(avg(cc.city_count)) as 
-- Поменять запрос так, чтобы выводилось среднее
-- количество городов в стране. Подсказка: разделите -- среднее кол-во городов относительно всех стран 
-- задачу на несколько подзадач. Например, сначала
-- вывести код страны и количество городов в каждой
-- стране. Затем сделать join получившегося результата
-- с запросом, где высчитывается среднее от количества
-- городов. Потом добавить join, который добавит имена
-- стран, вместо кода.

use world;

-- cначала вывести код страны и количество городов в каждой стране


select * from city;

-- step 1 (получаем код страны + кол-во городов в ней)
select CountryCode, count(Name) as city_count
from city
group by CountryCode;
-- step 2 (получаем среднее значение по кол-ву городов во всех странах) промежуточное, верное
select floor(avg(cc.city_count)) as average_cities
from (
select CountryCode, count(Name) as city_count
from city
group by CountryCode
) as cc;

-- step 3 (Объединяем доп таблицу стран(нужно только имя) + группировка по названию страны) - решение странное, выдаёт обычный подсчёт кол-ва городов в стране, не среднее
select c.Name, avg(cc.city_count)
from (
select CountryCode, count(Name) as city_count
from city
group by CountryCode
) as cc
inner join country as c
on cc.CountryCode = c.Code
group by c.Name;

-- step 3 вид сбоку (Объединяем доп таблицу стран(нужно только имя) + группировка по названию страны) - решение странное, выдаёт обычный подсчёт кол-ва городов в стране, не среднее
select c.Name as country_name, floor(avg(cc.city_count)) as average_cities
from country as c
join (
select CountryCode, count(Name) as city_count
from city
group by CountryCode
) as cc On c.Code = cc. CountryCode
group by c.Code;