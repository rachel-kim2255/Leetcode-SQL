# 7/22

select  actor_id, director_id
from    actordirector
group by actor_id, director_id
having count(*) >= 3

















-- -- pk: timestamp


-- SELECT actor_id, director_id
-- FROM    ActorDirector
-- GROUP BY actor_id, director_id
-- HAVING count(*) >= 3










-- -- # KEY: GROUP BY actor_id, director_id

-- -- with counting as(
-- -- SELECT  actor_id, director_id, count(*) as counted
-- -- FROM    ActorDirector
-- -- GROUP BY actor_id, director_id
-- -- )
-- -- SELECT  actor_id, director_id
-- -- FROM    counting
-- -- WHERE   counted >= 3