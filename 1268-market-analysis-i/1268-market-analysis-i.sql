# KEY: LEFT JOIN, conditional aggregation, DISTINCT
# Learn: Handling NULLs, CASE+COUNT pattern  
# Note: Always group by base table (u.user_id)


SELECT  u.user_id as buyer_id, u.join_date,
        COUNT(DISTINCT CASE WHEN YEAR(o.order_date) = 2019 THEN o.order_id END)
        AS orders_in_2019
FROM    Users as u LEFT JOIN Orders as o 
        ON u.user_id = o.buyer_id
        LEFT JOIN Items as i ON o.item_id = i.item_id
GROUP BY   u.user_id, u.join_date
ORDER BY   u.user_id; 




