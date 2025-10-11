# KEY: NOT IN, LEFT JOIN
# LEARN: 


-- select  name
-- FROM    SalesPerson
-- where   name NOT IN
--     (
--     SELECT  s.name
--     FROM    SalesPerson as s LEFT JOIN Orders as o 
--             ON s.sales_id = o.sales_id
--             LEFT JOIN Company as c 
--             ON  o.com_id = c.com_id
--     WHERE   c.name = 'RED')

SELECT s.name
FROM SalesPerson AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders AS o
    JOIN Company AS c ON o.com_id = c.com_id
    WHERE o.sales_id = s.sales_id 
      AND c.name = 'RED'
);
