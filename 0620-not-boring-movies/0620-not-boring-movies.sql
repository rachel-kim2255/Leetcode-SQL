# 7/22 

select  *
from    cinema
where   description != 'boring' and id % 2 = 1
order by rating desc;















-- -- -- cinema : id/pk
-- -- -- odd num id and not boring movie
-- -- -- order by rating desc

-- -- -- SELECT *
-- -- -- FROM    cinema
-- -- -- WHERE   id % 2 = 1 AND description <> 'boring'
-- -- -- ORDER BY rating desc;

-- -- SELECT *
-- -- FROM    cinema
-- -- WHERE   id % 2 = 1 AND description not like 'boring'
-- -- ORDER BY rating desc;

-- -- -- SELECT  *
-- -- -- FROM    (SELECT * FROM Cinema WHERE id % 2 = 1) as t
-- -- -- WHERE   description != '%boring%'
-- -- -- ORDER BY rating desc;









-- -- -- # Write your MySQL query statement below

-- -- -- SELECT  id, movie, description, rating
-- -- -- FROM    Cinema
-- -- -- WHERE   CASE WHEN id % 2 = 1 THEN id END
-- -- --         AND description != 'boring'
-- -- -- ORDER BY  rating DESC;






-- -- -- cinema : id/pk
-- -- -- odd num id and not boring movie
-- -- -- order by rating desc

-- SELECT  id, movie, description, rating
-- FROM    cinema
-- WHERE   (id % 2 = 1) and description not like 'boring' 
-- ORDER BY rating desc;



