# 7/29

select  sell_date, count(distinct product) as num_sold,
        group_concat(distinct product separator ',') as products
from    activities
group by sell_date























-- # LEARN: GROUP_CONCAT(name SEPARATOR '')
-- SELECT  sell_date, count(distinct product) as num_sold,
--         GROUP_CONCAT(DISTINCT product order by product ASC SEPARATOR ',') AS products
-- FROM    Activities
-- GROUP BY   sell_date
-- ORDER BY   sell_date asc; 
