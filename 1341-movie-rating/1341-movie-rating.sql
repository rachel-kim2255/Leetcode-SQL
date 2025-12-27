# Write your MySQL query statement below

(
SELECT u.name as results
FROM   MovieRating as m JOIN Users as u 
        ON m.user_id = u.user_id
GROUP BY u.user_id
ORDER BY COUNT(m.movie_id) DESC, u.name asc
LIMIT  1
)
UNION ALL
(
SELECT  v.title as results
FROM    MovieRating as m JOIN Movies as v
        ON m.movie_id = v.movie_id
WHERE   m.created_at LIKE '2020-02-%'
GROUP BY m.movie_id
ORDER BY AVG(m.rating) DESC, v.title ASC
LIMIT 1
)

