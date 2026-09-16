# 9.15

-- select  user_id,
--         (case when year(time_stamp) = 2020 then max(time_stamp))
--         as last_stamp
-- from    logins
-- group by user_id


select user_id,
        max(time_stamp) as last_stamp
from logins
where year(time_stamp) = 2020
group by user_id
