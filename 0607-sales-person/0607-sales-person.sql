-- -- SalesPerson: pk/saels_id
-- -- Company: pk/com_id
-- -- Orders: pk/order_id, fk/com_id-Compnay, fk/sales_id-SalesPerson

-- -- name: no realated "RED" comp

-- SELECT name
-- FROM    SalesPerson as s
-- WHERE   NOT EXISTS (
-- SELECT  1
-- FROM    Orders o JOIN Company c 
--         on c.com_id = o.com_id
-- WHERE   c.name = 'RED' AND o.sales_id = s.sales_id
-- );







-- -- 1. 서브쿼리는 메인 쿼리랑 연결만 시켜주면 함께 비교가능하다
-- -- 2. not exists 1) 있는지 없는지(True or False) 단위이므로 SELECT 1 으로 충분하다
-- --               2) LEFT JOIN을 하면 없는 정보까지 가져오므로 딱 필요한 정보 가져오려면 JOIN으로 퉁쳐도 된다 






-- -- # KEY: NOT IN, LEFT JOIN
-- -- # LEARN: it's better to use NOT EXISTS(2) because it's NULL-safe.

# 1) NOT IN
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

-- -- # 2) NOT EXISTS
-- -- SELECT s.name
-- -- FROM SalesPerson AS s
-- -- WHERE NOT EXISTS (
-- --     SELECT 1
-- --     FROM Orders AS o
-- --     JOIN Company AS c ON o.com_id = c.com_id
-- --     WHERE o.sales_id = s.sales_id 
-- --       AND c.name = 'RED'
-- -- );













select  distinct s.name
FROM    salesperson s LEFT JOIN orders o ON s.sales_id = o.sales_id
        LEFT JOIN company c on o.com_id = c.com_id
where   s.name not in (
    SELECT  s.name as name 
    FROM    salesperson s LEFT JOIN orders o ON s.sales_id = o.sales_id
            LEFT JOIN company c on o.com_id = c.com_id
    WHERE   c.name = 'RED')