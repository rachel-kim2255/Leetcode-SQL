# 8/4


select  contest_id, 
        round(count(user_id) / (select count(*) from users) * 100, 2) as percentage
from    register
group by contest_id
order by percentage desc, contest_id asc;




















-- # users: user_id(pk)
-- # register: pk(contest_id, user_id)


-- SELECT  r.contest_id as contest_id,
--         round((COUNT(r.user_id) * 100.0)/ (SELECT count(user_id) FROM users),2) as percentage
-- FROM    register r
-- GROUP BY r.contest_id
-- ORDER BY percentage desc, contest_id asc;

