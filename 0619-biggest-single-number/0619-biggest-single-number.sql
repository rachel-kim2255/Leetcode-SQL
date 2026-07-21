# 7/21 v


select max(num) as num
from (
select num, count(*)
from MyNumbers
group by num
having count(*) = 1) as sub

















-- -- # 이게나음
-- SELECT max(num) as num
-- FROM (
-- SELECT  num
-- FROM    MyNumbers 
-- GROUP BY num
-- HAVING   count(*) = 1) as t


-- SELECT MAX(num) as num
-- FROM (
-- SELECT  num
-- FROM    mynumbers
-- GROUP BY num
-- HAVING  count(*) = 1)AS T 









-- -- # KEY: MAX, GROUP BY, IN
-- -- # LEARN: USE WELL IN

-- -- SELECT MAX(num) as num
-- -- FROM    MyNumbers
-- -- WHERE num IN (
-- --     SELECT  num
-- --     FROM    MyNumbers
-- --     GROUP BY num
-- --     HAVING count(*) = 1
-- --  ) 



-- SELECT  num
-- FROM    mynumbers
-- GROUP BY num
-- HAVING case when count(*) = 1 then 1
--         else 'null' end
-- ORDER BY   num DESC
-- LIMIT   1








