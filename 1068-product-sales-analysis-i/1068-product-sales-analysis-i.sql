# 7/22

select  p.product_name, s.year, s.price
from    sales as s LEFT JOIN product as p
        ON s.product_id = p.product_id
















-- # Sales: PK(sale_id, year), FK(product_id)
-- # Product: PK(Product_id)

-- SELECT  p.product_name, s.year, s.price
-- FROM    Sales s join product p
--         on s.product_id = p.product_id














-- -- # Write your MySQL query statement below

-- -- SELECT  p.product_name, s.year, s.price
-- -- FROM    Sales as s JOIN Product as p 
-- --         ON s.product_id = p.product_id
