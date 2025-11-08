# KEY: only for counting 30 days, INTERVAL 29 DAY
# BETWEEN A AND B: including both A and B
# BETWEEN ~ INTERVAL 30 DAY AND ~: 31 DAYS
# INTERVAL 29 DAY: 30 DAYS 

SELECT  activity_date AS day, count(distinct(user_id)) as active_users
FROM    Activity
WHERE   Activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY    activity_date
