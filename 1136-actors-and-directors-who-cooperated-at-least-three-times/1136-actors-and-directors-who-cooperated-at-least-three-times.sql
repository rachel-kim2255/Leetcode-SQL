# KEY: GROUP BY actor_id, director_id

with counting as(
SELECT  actor_id, director_id, count(*) as counted
FROM    ActorDirector
GROUP BY actor_id, director_id
)
SELECT  actor_id, director_id
FROM    counting
WHERE   counted >= 3