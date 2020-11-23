--1 задание
update users set created_at = now(), updated_at = now();

--2 задание
update users set
created_at = str_to_date(created_at,'%d.%m.%Y %H:%i'),
updated_at = str_to_date(updated_at,'%d.%m.%Y %H:%i');

alter table users change column created_at created_at datetime DEFAULT current_timestamp();
alter table users change column updated_at updated_at datetime DEFAULT current_timestamp();

--3 задание
select * from storehouses_products order by case when value > 0 then 1 else 2 end;

--4 задание
select * from users where birthday rlike 'may|august';

--5 задание
select * from catalogs where id in (5,1,2) order by case when id = 5 then 1 when id = 1 then 2 else 3 end;