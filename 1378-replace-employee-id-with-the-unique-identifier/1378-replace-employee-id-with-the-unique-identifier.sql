# 7/29

select  (CASE WHEN eu.unique_id is null then null 
        else eu.unique_id end) as unique_id,
        e.name
from    employees as e LEFT JOIN employeeuni as eu
        on e.id = eu.id






















-- -- employee: pk(id)
-- -- emploueeuni: pk(id, unique_id)

-- -- to visualize relationship and plan to make query, and to avoid join errors

-- SELECT  eu.unique_id, e.name
-- FROM    employees as e LEFT JOIN employeeuni as eu
--         ON eu.id = e.id 



-- FROM    employees as e LEFT JOIN employeeuni as eu
--         ON eu.id = e.id 














-- -- # Write your MySQL query statement below

-- -- SELECT  u.unique_id, e.name
-- -- FROM    Employees as e LEFT JOIN EmployeeUNI as u



