-- выведите номера отделов и количество сотрудников в каждом
--  отделе, где сотрудников больше 10
use hr;

select department_id, count(*) c
from employees group by department_id 
having c> 10;


select t2.department_name, count(*) as c
from hr.employees t1
inner join hr.departments t2 on t1.department_id = t2.department_id
group by t2.department_name
having c > 10;
-- найти максимальную зарплату в каждом департаменте. 
-- Вывести department_id и max_salary.

select department_name, max(e.salary) as max_salary
from hr.employees as e
inner join hr.departments as d on e.department_id=d.department_id
group by d.department_name;

-- Найти сотрудников, у которых наибольшая зарплата в их 
-- департаменте.

select first_name, last_name, job_id, salary, max_salary as by_dep, hire_date
from employees as e
inner join (
select department_id, max(salary) as max_salary
from employees 
group by department_id
) as dep_salary
on e.department_id = dep_salary.department_id
where e.salary = dep_salary.max_salary
order by e.salary DESC;

select e.first_name, e.last_name, e.job_id, e.salary, dep.salary.max_salary as by_dep, e.hire_date
from employees as e
inner join(
select department_id, max(salary) as max_salary
from employees 
group by department_id
) as dep_salary
on e.department_id = dep_salary.department_id
where e.salary = dep_salary.max_salary
order by e.salary DESC;
-- varianta 2
select d.department_name , e.first_name, e.last_name, e.job_id, max(e.salary), e.hire_date
from employees as e
join departments as d
on d.department_id = e.department_id
group by d.department_name;
-- Найти департамент с наибольшим кол-вом сотрудников.
SELECT
max(cnt_emp)
FROM
(
SELECT
department_id,
count(employee_id) as cnt_emp
from
employees e
group by
department_id
order by
cnt_emp desc
) as tb1
;
-- Найти департамент с наибольшим кол-вом сотрудников.

SELECT
*
FROM
departments d
WHERE
department_id in 
(
SELECT
e.department_id
from
employees e
group by
department_id
having
COUNT(department_id) = 
(
SELECT
max(cnt_emp)
FROM
(
SELECT
department_id,
count(employee_id) as cnt_emp
from
employees e
group by
department_id
order by
cnt_emp desc
) as tb1
)
)
;
-- tot asta cu comentarii, toje samoie s komentarieami
-- 1 query
SELECT
department_id,
count(employee_id) as cnt_emp
from
employees e
group by
department_id
order by
cnt_emp desc
;


-- 2 query
SELECT
max(cnt_emp)
FROM
(
-- 1 query
SELECT
department_id,
count(employee_id) as cnt_emp
from
employees e
group by
department_id
order by
cnt_emp desc
) as tb1
;

-- 3 query
SELECT
e.department_id
from
employees e
group by
department_id
having
COUNT(department_id) = 
(
-- 2 query
SELECT
max(cnt_emp)
FROM
(
-- 1 query=> zapros
SELECT
department_id,
count(employee_id) as cnt_emp
from
employees e
group by
department_id
order by
cnt_emp desc
) as tb1
)
;
-- Найти департамент с наибольшим кол-вом сотрудников.
-- ucazivaiem polea s kakimi budem rabotati
select d. department_id, d.department_name, 
count(e.employee_id) as count_emp, d.manager_id
from departmens as d
inner join employees as e
on d.departement_id=e.department_id
group by d.department_id
order by count_emp desc;

select d.department_id, d.department_name, count(e.employee_id) as count_emp, d.manager_id
from departments as d
inner join employees as e
on d.department_id=e.department_id
group by d.department_id
order by count_emp desc
limit 1;
-- Найти департаменты, в которых больше 10 сотрудников
select t1.department_name,t1.manager_id,t2.count_of_emp 
from departments as t1
join (
select department_id,count(employee_id) as count_of_emp
from employees
group by department_id
having count_of_emp <10

) as t2 
on t1.department_id = t2.department_id
;