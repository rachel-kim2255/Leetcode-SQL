# Write your MySQL query statement below


SELECT  person_name
FROM    (SELECT person_name, 
        SUM(weight) OVER (ORDER BY turn) as cumulative_weight
        FROM Queue) as t1
WHERE   cumulative_weight <= 1000
ORDER BY cumulative_weight desc
LIMIT 1;
