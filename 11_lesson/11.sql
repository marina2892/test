-- Практическое задание по теме “Оптимизация запросов”
	-- 1 задание
	
	drop table if exists logs; 
	create table logs(id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	created_at datetime default current_timestamp(),
	table_name varchar(255) collate utf8_unicode_ci default null,
	id_prk bigint(20) unsigned not null,
	name varchar(255) collate utf8_unicode_ci default null,
	primary key(id)) ENGINE = Archive;
	
	DELIMITER //
	
	create trigger logs_users after insert on users
	for each row
	begin
	insert into logs (created_at,table_name,id_prk,name) values
	(new.created_at,'users',new.id,new.name);
	end//
	
	create trigger logs_catalogs after insert on catalogs
	for each row
	begin
	insert into logs (created_at,table_name,id_prk,name) values
	(now(),'catalogs',new.id,new.name);
	end//
	
	create trigger logs_products after insert on products
	for each row
	begin
	insert into logs (created_at,table_name,id_prk,name) values
	(new.created_at,'products',new.id,new.name);
	end//
	
	
	-- Практическое задание по теме “NoSQL”
	
	-- 1 задание
	Пусть в качестве коллекции будет хеш типа:
	HMSET visit ip 192.168.05.11 count 10
	
	-- 2 задание
	HMSET Jack_123@y.com name Jack email 123@y.com
	1)Keys Jack* --поиск email по имени
	  Hget Jack_123@y.com email
	2)Keys *123@y.com --поиск имени по email
	  Hget Jack_123@y.com name
	  
	-- 3 задание 
	 db.shop.insert({
		'category':['Процессоры','Материнские платы','Видеокарты','Жесткие диски','Оперативная память'],
		'products':['Intel Core i3-8100','Intel Core i5-7400','AMD FX-8320E','AMD FX-8320','ASUS ROG MAXIMUS X HERO',
		'Gigabyte H310M S2H','MSI B250M GAMING PRO']})
	 
	 
	 
	 
	 