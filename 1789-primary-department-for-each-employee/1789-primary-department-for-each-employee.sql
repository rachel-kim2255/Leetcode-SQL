-- # 9/15 again

(select  employee_id, department_id
from    employee
where   primary_flag = 'Y')
union
(select employee_id, department_id
from    employee
group by employee_id
having count(*) = 1)






















-- -- (SELECT  employee_id,department_id
-- -- FROM    employee
-- -- GROUP BY employee_id
-- -- HAVING  COUNT(*) = 1) -- someone who has only one department (whether primary or not)
-- -- union
-- -- (SELECT employee_id, department_id
-- -- FROM    employee
-- -- WHERE   primary_flag = 'Y')


-- (select  employee_id, department_id
-- from    employee
-- group by employee_id
-- having count(*) = 1)
-- union
-- (select employee_id, department_id
-- from    employee
-- where   primary_flag = 'Y')