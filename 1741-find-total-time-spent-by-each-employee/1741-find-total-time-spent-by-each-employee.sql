
with info as(
SELECT  emp_id, event_day, 
        (out_time-in_time) as times
FROM    Employees
)
SELECT  event_day as day, emp_id, 
        SUM(times) as total_time
FROM    info
GROUP BY event_day, emp_id