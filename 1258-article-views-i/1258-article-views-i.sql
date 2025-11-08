# Write your MySQL query statement below


SELECT  DISTINCT(v1.author_id) as id
FROM    Views AS v1 JOIN Views as v2 ON v1.author_id = v2.author_id
WHERE   v1.author_id = v2.viewer_id
ORDER BY v1.author_id ASC;