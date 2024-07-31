"""select*,
case
 when salary < 10000 then 0
 else 1 
 end as count
 from hr.employees;
 select 
 case
 when salary >= 10000 then salary
 else 0 
 end) as sum_salary
 from hr.employees;
 select
 sum(salary) .,nv
  
 from hr.employ es
 where salary >=10000;
 
 select
 avg(case -- tac mi setaiem srednee zp
 when salary<10000 then salary 
 else null 
 end ) as avg_salary
 from hr.employees;
 
 
 select
 if(salary <10000,salary,null)
 from hr.employees;
 
 select
 avg(if(salary <10000,salary,null)
 as avg_salary
 from hr.employees;
 
 select department_id
 from hr.employse
 where salary>10000;
 
 select * from airport airliners;
 select 
 case
 when ´range´ > 1000 and ´range´ <=2500 then "blijnemaghistralinie"
 when ´range´ > 2500 and ´range´ <=6000 then "srednemaghstralinie"
 when ´range´ > 6000 then  "dalnemaghistralinie"
 end as category
 
 from airport.airliners 
 
 select
 from airport.tickets
 where case
 when service_class = "Business" then price > 100000
 when service_class = 
  when service_class = 
 
 
 select * from airport.tickets:
 select case
 
 
 