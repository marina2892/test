--1 задание
select floor(avg(timestampdiff(YEAR,birthday,now()))) from users;

--2 задание
select DAYNAME(CONCAT_WS('-',YEAR(now()),month(birthday),day(birthday))) as day_of_week, count(*) from users group by day_of_week;