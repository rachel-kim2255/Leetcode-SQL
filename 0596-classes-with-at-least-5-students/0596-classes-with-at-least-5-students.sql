-- -- # Write your MySQL query statement below

-- -- class / num of student >= 5

-- SELECT  class
-- FROM    Courses
-- GROUP BY class
-- HAVING  COUNT(*) >= 5







-- -- SELECT class
-- -- FROM    Courses
-- -- group by class
-- -- HAVING  count(student) >= 5














select class
from    courses
group by class
having count(*) >4