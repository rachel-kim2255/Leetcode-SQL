# KEY: UNION ALL, count(distinct friend_id)

WITH friends as (
    SELECT  requester_id as id, accepter_id as friend_id
    FROM    RequestAccepted
    UNION ALL
    SELECT  accepter_id as id, requester_id as friend_id
    FROM    RequestAccepted
),
counting as (
    SELECT  id, count(distinct friend_id) as num
    FROM    friends
    GROUP BY id 
)
SELECT  id, num
FROM    counting
where   num = (select max(num) from counting)


