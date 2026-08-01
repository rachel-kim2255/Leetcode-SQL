# 8/1 

-- select  v.customer_id, 
--         count(v.visit_id) - count(t.transaction_id) as count_no_trans
-- from    visits as v LEFT JOIN transactions as t
--         on v.visit_id = t.visit_id
-- group by customer_id
-- having count(v.visit_id) - count(t.transaction_id) <> 0



SELECT  v.customer_id, count(*) as count_no_trans
FROM    Visits v LEFT JOIN Transactions t
        ON v.visit_id = t.visit_id
WHERE   t.transaction_id is null
GROUP BY v.customer_id
