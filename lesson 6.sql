-- 2 
select*from message 
where to_user_id=51
order by to_user_id DESC



-- 3
select 
user_id,
(select count(*) from 'like' where user_id=`profile`.user_id)
from `profile`
order by birthday desc
limit 10
-- 5 
SELECT 
id,
(select count(*) from message where from_user_id=`user`.id or to_user_id=`user`.id)+
(select count(*) from `like` where user_id=`user`.id)
from `user`
order by (select count(*) from message where from_user_id=`user`.id or to_user_id=`user`.id)+
(select count(*) from `like` where user_id=`user`.id) asc
