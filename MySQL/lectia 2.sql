select distinct job_id
from hr.employees;
select *
from hr.employees
order by last_name;

select *
from hr.employees
order by salary desc ;

select *
from hr.employees
where department_id in (60,90,100)
order by last_name;

select *
from hr.employees
where job_id = " st_clerk" order by salary desc;

select *
from hr.employees
where first_name like "D%";


select *
from hr.employeesselect *
from hr.employees

where first_name;




select job_id, salary
from hr.employees
order by salary desc 
limit 1;

select *
from hr.employees
order by salary desc;

select * ,
case
when salary < 10000 then "Low"
else "High"
end as Rank_
from hr.employees
order by Rank_;


select * 
from airliners;

select * ,
case
when production_year < 2000 then "old"
when production_year between 2000 and 2010 then "mid"
else "New"
end as Class_production
from airliners;


select * ,
case
when production_year < 2000 then "old"
when production_year between 2000 and 2010 then "mid"
else "New"
end as Class_production
from airliners
where "renge" <= 10000;
select * ,
case
when production_year < 2000 then "old"
when production_year between 2000 and 2010 then "mid"
else "New"
end as Class_production
from airliners
where "range" <= 10000
order by Class_production;
