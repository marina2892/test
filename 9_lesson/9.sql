-- Практическое задание по теме “Транзакции, переменные, представления”
	-- 1задание
	
	set autocommit = 0;
	select * from shop.users where id=1;
	insert into sample.users (name, birthday_at) select name, birthday_at from shop.users where id=1;
	delete from shop.users where id=1;
	commit;
	
	-- 2 задание
	
	create view cat (prod_name, cat_name) as select products.name,catalogs.name from
		 (select name, catalog_id from products) as products
		 join
		 (select id,name from catalogs) as catalogs
		 on products.catalog_id = catalogs.id;
		 
	-- 3 задание
	
	 create temporary table temp (id tinyint(2));
	 set @start:=0;
	 insert into temp values (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1),
	 (@start:=@start+1);
	  create table tbl (created_at date);
	  insert into tbl values ('2018-08-01'),('2018-08-04'),('2018-08-16'),('2018-08-17');
	  
	  select temp.id as day, if(tbl.day is null,0,1) as res from
			(select id from temp) as temp
		left join
			(select day(created_at) as day from tbl) as tbl
		on temp.id = tbl.day order by temp.id;
		
	-- 4 задание
	
	select @x:=count(*) from tbl;
	set @x:=@x-5;
	prepare prd from 'delete from tbl order by created_at asc limit ?';
	execute prd using @x;
	
	-- Практическое задание по теме “Администрирование MySQL”
	-- 1 задание
	grant select on shop.* to 'shop_read'@'%' identified by '123';
	grant all on shop.* to 'shop'@'%' identified by '12345';
	
	-- 2 задание
	create view username as select id, name from accounts;
	create user user_read identified by '123';
	grant usage on sample.accounts to 'user_read'@'%';
	grant select on sample.username to 'user_read'@'%';
	 
	  
	-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
	-- 1 задание

	DELIMITER //

	DROP FUNCTION IF EXISTS hello//

	create function hello()
	returns varchar (255)
	begin
	declare hour, minutes int;
	select hour(now()), minute(now()) into hour, minutes;
	if (hour = 6 and minutes <> 0) or (hour > 6 and hour < 12) or (hour = 12 and minutes = 0)
	then 
	return 'Доброе утро!'; 
	elseif (hour = 12 and minutes <> 0) or (hour > 12 and hour < 18) or (hour = 18 and minutes = 0)
	then 
	return 'Добрый день!'; 
	elseif (hour = 18 and minutes <> 0) or (hour > 18 and hour <= 23) or (hour = 0 and minutes = 0)
	then 
	return 'Добрый вечер!';
	elseif (hour = 0 and minutes <> 0) or (hour >= 1 and hour < 6) or (hour = 6 and minutes = 0)
	then 
	return 'Доброй ночи!';
	end if;
	end//
	
	-- 2 задание
	create trigger check_pr_ins before insert on products
	for each row
	begin
	if (new.name is null) and (new.desсription is null)
	then
	signal SQLSTATE '45000' set message_text = 'row is null';
	end if;
	end//
	
	create trigger check_pr_up before update on products
	for each row
	begin
	if (new.name is null) and (new.desсription is null)
	then
	signal SQLSTATE '45000' set message_text = 'row is null';
	end if;
	end//
	
	-- 3 задание
	
	DROP FUNCTION IF EXISTS fibonacci//
	
	create function fibonacci(x int)
	returns int deterministic
	begin
		declare i,a1,a2,f int;
		if x = 0 then return 0;
		elseif x = 1 then return 1;
		else
			set i = 2; set a1 = 0; set a2 = 1;
			while i <= x do
				set f = a1 + a2;
				set a1 = a2;
				set a2 = f;
				set i = i + 1;
			end while;
			return f;
		end if;
	end//
	  
	  