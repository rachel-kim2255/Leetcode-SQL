

-- -- DELETE FROM person
-- -- WHERE id NOT IN (
-- --     SELECT min_id FROM (
-- --         SELECT MIN(id) AS min_id
-- --         FROM person
-- --         GROUP BY email
-- --     ) AS temp -- 임시 테이블로 한 번 감싸기
-- -- );

-- DELETE p1 
-- FROM Person p1 join Person p2 on p1.email = p2.email
-- WHERE p1.id > p2.id;

-- START TRANSACTION; -- "야, 지금부터 내가 하는 짓 잘 지켜보고 임시로 저장해둬"
-- DELETE FROM users WHERE id = 1;
-- ROLLBACK; -- "아까 한 말 취소! 다시 원래대로 돌려놔"
-- -- 또는
-- COMMIT; -- "응, 잘 됐어. 이제 진짜로 DB에 박아버려"

-- START TRANSACTION;
-- DELETE 
-- FROM    




DELETE FROM person
WHERE id not in (
    SELECT min_id FROM (
        select min(id) as min_id
        from    person
        group by email
    )as temp
);


-- -- DELETE FROM person
-- -- WHERE id NOT IN (
-- --     SELECT min_id FROM (
-- --         SELECT MIN(id) AS min_id
-- --         FROM person
-- --         GROUP BY email
-- --     ) AS temp -- 임시 테이블로 한 번 감싸기
-- -- );