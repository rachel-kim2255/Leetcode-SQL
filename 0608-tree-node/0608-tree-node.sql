# Write your MySQL query statement below

SELECT  id,
        case
        WHEN p_id is null THEN 'Root'
        WHEN id in (SELECT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf' END as type
FROM    Tree