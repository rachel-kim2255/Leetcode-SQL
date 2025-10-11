# Write your MySQL query statement below


SELECT class
FROM    Courses
group by class
HAVING  count(student) >= 5