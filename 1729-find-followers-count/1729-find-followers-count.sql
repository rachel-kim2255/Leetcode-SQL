





# 8/5 v

select  user_id, count(*) as followers_count
from    followers
group by user_id
order by user_id asc;














-- SELECT user_id, count(distinct follower_id) as followers_count
-- FROM    followers
-- GROUP BY user_id