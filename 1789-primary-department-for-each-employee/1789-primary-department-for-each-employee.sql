
(SELECT  employee_id,department_id
FROM    employee
GROUP BY employee_id
HAVING  COUNT(*) = 1)
union
(SELECT employee_id, department_id
FROM    employee
WHERE   primary_flag = 'Y')
