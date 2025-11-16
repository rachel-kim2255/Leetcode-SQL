# Write your MySQL query statement below

with k as(
SELECT  p.product_id, u.units, (p.price * u.units) as total_price
FROM    Prices as p LEFT JOIN UnitsSold as u
        ON  p.product_id = u.product_id 
        and u.purchase_date BETWEEN p.start_date AND p.end_date
)
SELECT  product_id, 
        COALESCE(ROUND(SUM(total_price) / SUM(units), 2), 0) AS average_price
FROM    k
GROUP BY product_id