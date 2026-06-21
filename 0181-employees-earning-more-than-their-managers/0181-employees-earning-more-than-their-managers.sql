-- # Write your MySQL query statement below

-- select  e1.name AS Employee
-- from    employee as e1 left join employee as e2 
--         on e1.managerId = e2.id
-- where   e1.salary > e2.salary




SELECT  e1.name as Employee
FROM    Employee as e1 LEFT JOIN Employee as e2
        on e1.managerId = e2.id
WHERE   e1.salary > e2.salary








