select str_to_date('21,2020,07', '%d,%Y,%m') as my_date;


select date_format(now(), '%d-%Y-%m :) %H:%i:%s.%f');

select datediff('2024-07-12', '2023-12-25');


select timestampdiff(MINUTE, '2023-12-25 00:00:00', '2024-07-12 11:25:35');


select now() + INTERVAL 12 DAY;

select now() + INTERVAL 4 HOUR;

select now() - INTERVAL 4 MONTH;

select now() - INTERVAL 2 YEAR;


select date_add('2024-07-12', INTERVAL 6 MONTH);

select date_sub('2024-07-12', INTERVAL 3 DAY);
select subdate('2024-07-12', INTERVAL 1 MONTH);

select weekday('2024-07-12');


select last_day('2024-07-12');

select EXTRACT(QUARTER from '2024-07-12');

select date_column + INTERVAL 1 day
from table ;

select year(now()) - year('2003-04-25 14:15:38');

select floor(datediff(NOW(), '2003-04-25 14:15:38') / 365);

select timestampdiff(YEAR, '2003-04-25 14:15:38', now());
