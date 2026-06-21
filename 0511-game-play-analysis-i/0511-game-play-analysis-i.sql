-- SELECT  player_id, MIN(event_Date) as first_login
-- FROM    activity
-- GROUP BY player_id











select  player_id, min(event_date) as first_login
from    activity 
group by player_id 









