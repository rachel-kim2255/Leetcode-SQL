# Write your MySQL query statement below

Select t.manager as name
FROM (
    SELECT  e1.name as manager, count(e2.id) as num_employees
    FROM    Employee AS e1 LEFT JOIN Employee as e2 
            ON e1.id = e2.managerId
    GROUP BY e1.id, e1.name) as t
WHERE   t.num_employees >= 5