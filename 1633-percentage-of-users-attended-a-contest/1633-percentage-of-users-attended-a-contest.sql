# users: user_id(pk)
# register: pk(contest_id, user_id)


SELECT  r.contest_id as contest_id,
        round((COUNT(r.user_id) * 100.0)/ (SELECT count(user_id) FROM users),2) as percentage
FROM    register r
GROUP BY r.contest_id
ORDER BY percentage desc, contest_id asc;

