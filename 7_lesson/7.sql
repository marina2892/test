-- 1 задание

SELECT (select name from users where id = user_order_count.user_id)
FROM (

SELECT user_id, COUNT( * ) AS count
FROM orders
GROUP BY (
user_id
)
) AS user_order_count
WHERE user_order_count.count >=1;

-- 2 задание

SELECT products.name, catalogs.name
FROM 
	(SELECT name, catalog_id FROM products) AS products
	JOIN 
	(SELECT name, id
	FROM catalogs) AS catalogs ON products.catalog_id = catalogs.id;
	
-- 3 задание

select a1.id, a1.name,a2.name from (SELECT flights.id,cities.name,flights.`to` from
(select id,`from`,`to` from flights) as flights
join
(select label,name from cities) as cities
on flights.`from` = cities.label) as a1
join
(select label,name from cities)as a2 
on a1.`to`=a2.label order by a1.id
