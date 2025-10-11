# Write your MySQL query statement below

select  name
FROM    SalesPerson
where   name not in
    (
    SELECT  s.name
    FROM    SalesPerson as s LEFT JOIN Orders as o 
            ON s.sales_id = o.sales_id
            LEFT JOIN Company as c 
            ON  o.com_id = c.com_id
    WHERE   c.name = 'RED')
