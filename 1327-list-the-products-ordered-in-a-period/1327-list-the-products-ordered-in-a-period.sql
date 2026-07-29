# 7/28

SELECT  p.product_name, SUM(o.unit) as unit
FROM    Orders as o LEFT JOIN products as p
        on o.product_id = p.product_id
WHERE   YEAR(o.order_date) = 2020 and MONTH(o.order_date) = 2
GROUP BY o.product_id
HAVING sum(o.unit) >= 100