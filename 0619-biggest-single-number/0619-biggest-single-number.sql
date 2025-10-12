# KEY: MAX, GROUP BY, IN
# LEARN: USE WELL IN

SELECT MAX(num) as num
FROM    MyNumbers
WHERE num IN (
    SELECT  num
    FROM    MyNumbers
    GROUP BY num
    HAVING count(*) = 1
 ) 
