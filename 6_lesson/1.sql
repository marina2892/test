use snet0611;

-- 2 задание. Пользователь id = 8

select (select concat(lastname,' ',firstname) from users where id = from_user_id) as name, count(*) as count_messages from messages where to_user_id = 8 and  is_read = 1 
and from_user_id in
(select initiator_user_id as id from friend_requests
where
target_user_id=8 and status = 'approved'
union
select target_user_id as id from friend_requests
where
initiator_user_id=8 and status = 'approved') group by (from_user_id) order by count_messages desc limit 1;

-- 3 задание

select sum(l.count_likes) as total_likes 
from 
	(select (select birthday from users where id = likes.to_user_id) as birthday, likes.count_likes 
	from
		(select to_user_id, count(*) as count_likes from likes_users group by (to_user_id)) as likes
	order by birthday desc limit 10) as l;

-- 4 задание
select (if (gender_count.gender = 'f','Женщины','Мужчины'))as gender, max(gender_count.c) from 
(select gender, count(*) as c from users where id in
(select from_user_id as id from likes_users
union all
select id_user as id from likes_photos
union all
select id_user as id from likes_posts) group by (gender)) as gender_count;

-- 5 задание
select (select concat(lastname,' ',firstname) from users where id = users_actions.id) as name, sum(users_actions.count_actions) as sum_actions
from
(select from_user_id as id, count(*) as count_actions from likes_users group by (id)
union all
select from_user_id as id, count(*) as count_actions from messages group by (id)
union all
select user_id as id, count(*) as count_actions from comments group by (id)
union all
select user_id as id, count(*) as count_actions from posts group by (id)
union all
select id_user as id, count(*) as count_actions from likes_photos group by (id)
union all
select id_user as id, count(*) as count_actions from likes_posts group by (id)) as users_actions
group by (name) order by sum_actions asc limit 10;





