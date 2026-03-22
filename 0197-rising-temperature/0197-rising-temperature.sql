SELECT  w2.id
FROM    weather as w1 LEFT JOIN weather as w2
        on DATEDIFF(w2.recordDate, w1.recordDate) = 1 
WHERE   w2.temperature > w1.temperature





