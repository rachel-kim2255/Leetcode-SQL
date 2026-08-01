# 7.31 다시

-- select  *
-- from    patients
-- where   conditions like 'DIAB1%' OR conditions like '% DIAB1%'



SELECT *
FROM Patients
WHERE REGEXP_LIKE(conditions, '(^| )DIAB1')












-- # Write your MySQL query statement below

-- SELECT  *
-- FROM    Patients
-- WHERE   conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'

-- SELECT *
-- FROM Patients
-- WHERE REGEXP_LIKE(conditions, '(^| )DIAB1') > start with the letters or blank, and with the letters 