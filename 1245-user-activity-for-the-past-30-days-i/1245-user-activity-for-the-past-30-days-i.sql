# Write your MySQL query statement below

SELECT  activity_date AS day, count(distinct(user_id)) as active_users
FROM    Activity
WHERE   Activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY    activity_date
