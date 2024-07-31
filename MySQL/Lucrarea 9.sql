-- Выведите имена студентов и id курса, которые они проходят
select *
from Students;
select * from Courses;
select * from Students2Courses;

select first_name
from Students as S
inner join Students2Courses as SC
on SC.student_id = S.id;
select first_name, SC.course_id
from Students as S
inner join Students2Courses as SC
on SC.student_id = S.id;

-- Измените запрос в задании 1 так, чтобы выводились имена студентов и 
-- названия курсов, которые они проходят

select S.first_name, C.title
from Students as S
inner join Students2Courses as SC
on SC.student_id = S.id
inner join Courses as C
on C.id = SC.course_id;
-- Вывести имена всех преподавателей с их компетенциями.
--  Подсказка: сначала выведите имена преподавателей с id компетенции. 
-- А потом поменяйте запрос так (добавив еще один джойн), чтобы выводились 
-- имена преподавателей и названия компетенций. 
select 
t1.name,
t2.Competencies_id
from Teachers t1
inner join Teachers2Competencies t2
on t1.id=t2.teacher_id;

select 
t1.name,
t3.title
from Teachers t1
inner join Teachers2Competencies t2
on t1.id=t2.teacher_id
inner join Copmpetencies t3
on t2.competencies_id=t3.id;
Select 
t1.name,
t3.title 
from Teachers t1 
inner join Teachers2Competencies t2
on t1.id=t2.teacher_id
inner join Competencies t3
on t2.competencies_id=t3.id;

Select 
t1.name,
t3.title 
from Teachers t1 
left join Teachers2Competencies t2
on t1.id=t2.teacher_id
left join Competencies t3
on t2.competencies_id=t3.id;
-- Найти преподавателя, у которого нет компетенций

select t.name
from Teachers as t
left join Teachers2Competencies as tc
on t.id=tc.teacher_id
where tc.competencies_id is null;
-- Отобразить имена студента и старост, на которых они обучается

-- Отобразить имена студента и старост, и название курса, 
-- на котором они обучается
select s.first-name as stud_name, c.title as course_name, str.first_nameas headman_name
FROM Students as s
 JOIN Students2Courses as sc
 on s.id=sc.student_id
 join Courses as c
 on sc.course_id=c.id 
 Join Students st
 On c.headman_id=st.id;
 
SELECT s.first_name as stud_name, c.title as course_name, st.first_name as headman_name
FROM Students as s
JOIN Students2Courses as sc
	ON s.id = sc.student_id
JOIN Courses as c
	ON sc.course_id = c.id
JOIN Students st
	ON c.headman_id = st.id;

