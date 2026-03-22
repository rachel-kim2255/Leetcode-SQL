SELECT  player_id, MIN(event_Date) as first_login
FROM    activity
GROUP BY player_id





