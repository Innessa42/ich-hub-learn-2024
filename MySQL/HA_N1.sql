use hr;
-- Написать запрос, возвращающий всех сотрудников, c job_id = IT_PROG.
SELECT * from  employees where job_id = 'IT_PROG';
-- Изменить запрос так, чтобы вывести всех сотрудников с job_id равной AD_VP?
  SELECT * from HR.EMPLOYEES where job_id = 'AD_VP';
-- Выполнить эти два запроса: 
SELECT * from HR.EMPLOYEES where job_id = 'IT_PROG'; 
 SELECT * from HR.EMPLOYEES where job_id = 'AD_VP';
-- Воспроизвести самостоятельно следующие запросы:
-- Найдите сотрудников, с зп от 10 000 до 20 000 (включая концы)
select * from employees  where salary between 10000 and salary <= 20000;
-- Найдите сотрудников не из 60, 30 и 100 департамента
select * from employees  where department_id not in (60, 30, 100);
-- Найдите сотрудников у которых есть две буквы ll подряд в середине имени
select * from employees  where first_name like '%ll%';
-- Найдите сотрудников, у которых фамилия кончается на a
select * from employees  where last_name like '%a';
-- Найти всех сотрудников с зарплатой выше 10000
select * from employees  where salary < 10000;
-- Найти всех сотрудников, с зарплатой выше 10000 и чья фамилия начинается на букву L
select * from employees  where salary < 10000 and  last_name like 'L%';
-- Не выполняя запрос к базе данных, предсказать его результат:
select *  from employees where salary > 10000 or salary <= 10000;
-- Будут наидены сотрудники с зарплатой меньше 10000 тысячь и у кого зарплата выше или равно 10000 тысячь.
 -- Я думаю будут выявлены все сотрудники.

-- Ответить в 1 предложении: чем он будет отличаться от результата этого запроса?

select *  from employees where salary > 10000 or salary < 10000;
-- В список воидут сотрудники с зарплатой до 10000,
--  но не те у кого зарплата = 10000, и те у кого зарплата больше 10000
-- Не выполняя запрос к базе, предсказать результат. 
select *  from employees where salary > 10000 or salary <= 10000;
-- Будут наидены сотрудники с зарплатой меньше 10000 тысячь и у кого зарплата выше или равно 10000 тысячь.
select *  from employees where salary > 10000 and salary < 5000;
-- Будут наидены сотрудники с зарплатой меньше 10000 тысячь и у кого зарплата выше 5000.














