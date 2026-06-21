-- # Write your MySQL query statement below

-- -- Customer: id(pk)
-- -- orders: id(pk), customerId(fk - customer pk)

-- SELECT  c.name as Customers
-- FROM    customers as c LEFT JOIN Orders as o
--         ON c.id = o.customerId
-- WHERE   o.id is null

-- /





-- -- SELECT  c.name as Customers
-- -- FROM    customers c left join orders o
-- --         on c.id = o.customerId
-- -- where   o.id is null















SELECT  c.name as customers
FROM    Customers as c LEFT JOIN Orders as o
        ON c.id = o.customerId
WHERE   o.customerId is null


