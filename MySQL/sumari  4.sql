
-- Выведите второго по зарплате сотрудника в каждом департаменте.
use hr;

select * from 
(select first_name, last_name, department_id, salary, 
dense_rank() over(partition by department_id order by salary desc) as rank_salary
from employees) as t1
where rank_salary = 2;

-- HA vivesti spisoc region_id, total_countries, gde total_countries - colicestvo stran v tablite

select
   region_id, count(country_id)
from countries
group by region_id;
select
  Distinct region_id, count(country_id)
from countries
group by region_id;
select
DISTINCT region_id,
count(country_id) over(partition by region_id) as count_countries
from countries;

select
location_id, department-name,
count(*) over(partition by location_id) as dept_total
from departments;

-- p.6
select * from employees;
select 
   menager_id, 
   last_name, 
    sum(salary) over (partition by manager_id) as total_manager_salary
from employees;


-- Работа с таблицей employees. Вывести manager_id, last_name,
-- total_manager_salary, где total_manager_salary - общая зарплата
-- подчиненных каждого менеджера (manager_id). 

select * from employees;

select
manager_id,
count(employee_id) over (partition by manager_id) as emp_count,
sum(salary) over (partition by manager_id) as total_manager_salary
from employees;


select 
manager_id, last_name, sum(salary) as total_manager_salary
from employees
where manager_id is not null
group by manager_id;


select *
from (
select 
manager_id, last_name, 
sum(salary) over(partition by manager_id) as total_manager_salary
from employees
)as t1
where manager_id is not null;

-- HOMETASKS

-- Вывести список region_id, total_countries, где total_countries - количество стран в таблице.

use hr;


select
region_id,
count(country_id)
from countries
group by region_id;


select
DISTINCT region_id,
count(country_id) over(partition by region_id) as count_countries
from countries;

