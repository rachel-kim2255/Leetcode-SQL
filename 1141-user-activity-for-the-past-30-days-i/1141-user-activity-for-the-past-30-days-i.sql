# 7/23

select  activity_date as day, count(distinct user_id) as active_users
from    activity
where  datediff('2019-07-27', activity_date) between 0 and 29
group by activity_date




















-- # activity

-- # to find eht daily active user count (30 days ending 2019-07-27)

-- -- when they was active (date)
-- -- counting the daily active users

-- SELECT  activity_date as day,
--         count(distinct user_id) as active_users
-- FROM    activity 
-- WHERE   activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
-- GROUP BY activity_DATE





















-- -- # KEY: only for counting 30 days, INTERVAL 29 DAY
-- -- # BETWEEN A AND B: including both A and B
-- -- -- # BETWEEN ~ INTERVAL 30 DAY AND ~: 31 DAYS
-- -- -- # INTERVAL 29 DAY: 30 DAYS 


-- SELECT activity_date as day, count(distinct user_id) as active_users
-- FROM    Activity
-- WHERE   activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) 
--         AND '2019-07-27'
-- GROUP BY activity_date


-- SELECT  activity_date AS day, COUNT(DISTINCT user_id) AS active_users
-- FROM    Activity
-- WHERE   DATEDIFF('2019-07-27', activity_date) < 30 
--         AND activity_date <= '2019-07-27'
-- GROUP BY activity_date;
