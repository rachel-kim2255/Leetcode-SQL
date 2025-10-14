# Write your MySQL query statement below

SELECT  id, movie, description, rating
FROM    Cinema
WHERE   CASE WHEN id % 2 = 1 THEN id END
        AND description != 'boring'
ORDER BY  rating DESC;

