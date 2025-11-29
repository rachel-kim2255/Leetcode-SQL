# LEARN: GROUP_CONCAT(name SEPARATOR '')
SELECT  sell_date, count(distinct product) as num_sold,
        GROUP_CONCAT(DISTINCT product order by product ASC SEPARATOR ',') AS products
FROM    Activities
GROUP BY   sell_date
ORDER BY   sell_date asc; 
