# 7/25

select  query_name, 
        round( avg(rating/position) , 2) as quality,
        round(((sum(case when rating < 3 then 1 else 0 end) / count(rating)) * 100),2) as poor_query_percentage
from    queries
group by query_name




















-- # queries: position(1-500), rating(1-5 / <3: poor query)

-- -- the average of ratio :query rating / position's avg
-- -- poor query %: rating < 3/ all queries

-- SELECT  query_name,
--         round(AVG(rating *1.0 / position),2) as quality,
--         ROUND((SUM(IF(rating<3, 1, 0)) / count(*)) * 100,2) as poor_query_percentage


-- FROM    Queries
-- GROUP BY query_name













-- -- -- -- quality: average ratio (rating / position)
-- -- -- -- poor query percentage (ratio: rating under 3 / all queries)

-- -- -- # round 2, any order


-- -- SELECT query_name,
-- --        ROUND(AVG(rating / position), 2) AS quality,
-- --        ROUND(AVG(IF(rating < 3, 1, 0)) * 100, 2) AS poor_query_percentage
-- -- FROM Queries
-- -- WHERE query_name IS NOT NULL
-- -- GROUP BY query_name;


-- -- SELECT 
-- --     query_name,
-- --     ROUND(AVG(rating / position), 2) AS quality, -- 그룹의 rating/position 평균냄 
-- --     ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage -- 그룹에서 rating <3인놈 1로 설정됨, 1+1..이니까 전체갯수로 /치면 0~1사이 숫자가 나옴. 퍼센티지니까 * 100
-- -- FROM Queries
-- -- GROUP BY query_name;





















-- -- -- SELECT 
-- -- --     query_name,
-- -- --     ROUND(SUM(rating / position) / COUNT(*), 2) AS quality,
-- -- --     ROUND(
-- -- --         SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
-- -- --         2
-- -- --     ) AS poor_query_percentage
-- -- -- FROM Queries
-- -- -- GROUP BY query_name;

-- -- -- SELECT query_name,
-- -- --         SUM(rating / position) / count(*))
-- -- -- FROM    Queries
-- -- -- GROUP BY query_name;
