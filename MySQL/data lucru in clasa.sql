
select 
t1.first_name,
t1.last_name,
t2.department_name
from hr.employees t1
inner join hr.departments t2
on t1.department_id = t2.department_id;
select 
t1.first_name,
t1.last_name,
t2.department_name,
t1.department_id
from hr.employees t1
inner join hr.departments t2
	on t1.department_id = t2.department_id and t2.department_name in('IT', 'Treasury', 'IT Support');
-- where t2.department_name = 'IT' or t2.department_name = 'Treasury' or t2.department_name = 'IT Support';
use hr;
select e.first_name, e.last_name, m.first_name, m.last_name
from employees e
join employees m
on e.manager_id = m.employee_id;
-- vivesti job_id teh sotrudnicov, cotorie zarabativaiut bolishe svoievo menedjera
use hr;
select e.job_id
from employees e
join employees m
on e.manager_id = m.employee_id and e.salary > m.salary;
-- Вывести имя, фамилию и город сотрудников, которые работают в Seattle или Toronto.
select
t1.first_name,
t1.last_name,
t2.city
from hr.employees t1 join departments t3 on t1.department_id = t3.department_id
join locations t2 on  t2.location_id = t3.location_id and t2.city in ("Seattle","Toronto");

-- Выведите названия департаментов, в которых менеджеры зарабатывают больше 10000.
select distinct d.department_name
from hr.departments as d
join hr.employees as e
on d.manager_id = e.manager_id where e.salary>10000;

-- Вывести имя, фамилию, название департамента и название должности сотрудника.
select e.first_name, e.last_name, d.department_name, j.job_title
from hr.employees e
join departments d
on e.department_id = d.department_id
join jobs j    
on  e.job_id = j.job_id;

-- Вывести имя, фамилию и зарплату тех сотрудников, которые работают в городах Вывести имя, фамилию и зарплату тех сотрудников, которые работают в городах Oxford и San Francisco. и San Francisco.Oxford
select 
e.first_name,
e.last_name,
e.salary,
from  hr.employees as e
join  hr.departments as d
one.department_id = d.department_id
join hr.locations as l
on l.location_id = d.location_id
where l.city in ("Oxford","San Francisco");

select 
e.first_name,
e.last_name,
e.salary
from hr.employees as e
join hr.departments as d
on e.department_id = d.department_id 
join hr.locations as l
on l.location_id = d.location_id 
where l.city in ('Oxford', 'San Francisco');

select 
e.first_name,
e.last_name,
e.salary
from hr.employees as e
join hr.departments as d
on e.department_id = d.department_id 
join hr.locations as l
on l.location_id = d.location_id 
and l.city in ('Oxford', 'San Francisco');
-- Используя данные из схемы HR выведите имя и фамилию сотрудника и название его департамента (hr.departments).

select e.first_name, e.last_name, d.department_name
from hr.employees e
left join hr.departments d
on e.department_id = d.department_id;







