# 8.5



-- SELECT  e1.employee_id, e1.name, 
--         COUNT(e2.reports_to) AS reports_count, 
--         ROUND(AVG(e2.age), 0) AS average_age
-- FROM    employees as e1 INNER JOIN employees as e2
--         ON e1.employee_id = e2.reports_to
-- GROUP BY e1.employee_id, e1.name
-- ORDER BY e1.employee_id;


SELECT  e1.employee_id, e1.name, count(e2.employee_id) as reports_count, round(avg(e2.age),0) as average_age
FROM    employees as e1 inner join employees as e2
        on e1.employee_id = e2.reports_to
group by e1.employee_id
order by e1.employee_id;
-- with list as(
-- select  reports_to,count(reports_to) as counted, round(avg(age),0) as average_age
-- from    employees
-- group by reports_to)
-- select  e.employee_id, e.name, l.counted as reports_count, l.average_age
-- from    employees as e LEFT JOIN list as l
--         on e.employee_id = l.reports_to
-- where   l.reports_to is not null
-- order by e.employee_id




















