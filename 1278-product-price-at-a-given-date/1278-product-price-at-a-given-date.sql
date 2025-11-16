
-- # 1) CASE
-- SELECT  product_id,
--         CASE
--             WHEN MAX(CASE WHEN change_date <= '2019-08-16' THEN new_price END) IS NULL 
--                 THEN 10
--             ELSE MAX(CASE WHEN change_date <= '2019-08-16' then new_price END) 
--         END AS price
-- FROM    Products
-- GROUP BY product_id;

# 2) COALESCE
SELECT product_id,
       COALESCE(
            (SELECT new_price
             FROM Products p2
             WHERE p2.product_id = p1.product_id
               AND p2.change_date < '2019-08-17'
             ORDER BY change_date DESC
             LIMIT 1),
           10
       ) AS price
FROM Products p1
GROUP BY product_id;
