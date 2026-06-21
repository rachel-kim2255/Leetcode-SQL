-- SELECT  e.name, b.bonus
-- FROM    employee e LEFT JOIN bonus b
--         on e.empId = b.empId
-- WHERE   b.bonus < 1000 or b.bonus is null





select  e.name as name, b.bonus
from    employee as e LEFT JOIN bonus as b
        on e.empId = b.empId
where   b.bonus is null or b.bonus < 1000









