# Write your MySQL query statement below


-- SELECT  u.user_id as buyer_id, u.join_date,
--         COUNT(DISTINCT CASE WHEN YEAR(o.order_date) = 2019 THEN o.order_id END)
--         AS orders_in_2019
-- FROM    Users as u JOIN Orders as o 
--         ON u.user_id = o.buyer_id
--         JOIN Items as i ON o.item_id = i.item_id
-- GROUP BY   o.buyer_id, u.join_date
-- ORDER BY   u.user_id; 


SELECT 
    u.user_id AS buyer_id,
    u.join_date,
    COUNT(DISTINCT CASE WHEN YEAR(o.order_date) = 2019 THEN o.order_id END) AS orders_in_2019
FROM Users u
LEFT JOIN Orders o
    ON u.user_id = o.buyer_id
LEFT JOIN Items i
    ON o.item_id = i.item_id
GROUP BY u.user_id, u.join_date
ORDER BY u.user_id;




