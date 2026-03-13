

with info as(
SELECT  user_id, activity_date, 
        activity_type, activity_duration
FROM    useractivity
WHERE   user_id in (
        select  user_id
        from    useractivity
        where   activity_type = 'paid'
        )
)
SELECT  user_id, 
        ROUND(AVG(CASE WHEN activity_type = 'free_trial' THEN activity_duration END),2) as trial_avg_duration,
        ROUND(AVG(CASE WHEN activity_type = 'paid' THEN activity_duration END),2) as paid_avg_duration
FROM    info
GROUP BY user_id