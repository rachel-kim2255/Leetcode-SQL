SELECT  e.name, b.bonus
FROM    employee e LEFT JOIN bonus b
        on e.empId = b.empId
WHERE   b.bonus < 1000 or b.bonus is null