# Write your MySQL query statement below
# KEY : SUBQUEARY
# LEARN: IN CASE, not possible id = id + 1


SELECT  (CASE 
        WHEN id != (SELECT count(*) FROM Seat) AND id % 2 = 1 THEN id + 1 
        WHEN id != (SELECT count(*) FROM Seat) AND id % 2 = 0 THEN id - 1 
        WHEN id = (SELECT count(*) FROM Seat) AND id % 2 = 0 THEN id - 1
        ELSE id END) AS id, 
        student
FROM    Seat 
ORDER BY id ASC;


