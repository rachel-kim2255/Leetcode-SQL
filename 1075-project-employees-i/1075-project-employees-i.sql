# 7/20

select  p.project_id, round(avg(e.experience_years),2) as average_years
from    project as p LEFT JOIN employee as e
        on p.employee_id = e.employee_id
group by p.project_id















-- -- Product: pk(project_id, employee_id), fk(employee_id)
-- -- employee: pk(employee_id) >> years not null


-- SELECT  p.project_id, cast(round(avg(experience_years),2) as decimal(8,2)) as average_years
-- FROM    project p join employee e
--         on p.employee_id = e.employee_id
-- GROUP BY p.project_id
















-- -- # Write your MySQL query statement below

-- -- SELECT  p.project_id, round(avg(e.experience_years), 2) AS average_years
-- -- FROM    Project as p JOIN Employee as e
-- --         ON p.employee_id = e.employee_id
-- -- GROUP BY p.project_id