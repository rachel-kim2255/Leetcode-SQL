# KEY: GROUP BY, count(disticnt(product_key)), not count(*)

SELECT customer_id
FROM   Customer
GROUP BY    customer_id
having count(distinct(product_key)) = (SELECT count(DISTINCT(product_key)) FROM Product)
