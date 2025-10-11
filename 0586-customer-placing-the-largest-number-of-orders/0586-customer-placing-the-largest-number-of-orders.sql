# KEY: group by, order by
# LEARN: LIMIT / TOP is not possible in mysql

SELECT  customer_number
FROM    Orders
GROUP BY customer_number
ORDER BY count(order_number) desc
LIMIT 1


