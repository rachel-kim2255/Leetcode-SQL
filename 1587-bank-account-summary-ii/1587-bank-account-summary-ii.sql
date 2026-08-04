# 8/3 

SELECT  u.name, sum(t.amount) as balance
FROM    users as u LEFT JOIN transactions as t
        on u.account = t.account
GROUP BY u.account
having   sum(t.amount) > 10000
