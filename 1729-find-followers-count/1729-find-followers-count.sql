

SELECT user_id, count(distinct_follower_id) as followers_count
FROM    followers
GROUP BY user_id