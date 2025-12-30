-- WITH RankedScores AS (
--     SELECT 
--         student_id, 
--         subject, 
--         score,
--         -- 첫 번째 시험 점수를 찾기 위해 날짜순 정렬
--         RANK() OVER (PARTITION BY student_id, subject ORDER BY exam_date ASC) as first_rank,
--         -- 마지막 시험 점수를 찾기 위해 날짜 역순 정렬
--         RANK() OVER (PARTITION BY student_id, subject ORDER BY exam_date DESC) as latest_rank
--     FROM Scores
-- )
-- SELECT  f.student_id, f.subject, f.score AS first_score, l.score AS latest_score
-- FROM    RankedScores f JOIN RankedScores l 
--         ON f.student_id = l.student_id 
--         AND f.subject = l.subject
-- WHERE   f.first_rank = 1  -- 첫 번째 시험
--         AND l.latest_rank = 1 -- 마지막 시험
--         AND l.score > f.score -- 성적 향상 조건
--         AND f.score != l.score -- (참고) 다른 날짜임을 보장
-- ORDER BY student_id, subject;

-- SELECT DISTINCT student_id, subject, first_score, latest_score
-- FROM (
--     SELECT student_id, subject,
--            FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date) as first_score,
--            FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date DESC) as latest_score
--     FROM Scores
-- ) t
-- WHERE latest_score > first_score
-- ORDER BY student_id, subject;

SELECT DISTINCT student_id, subject, first_score, latest_score
FROM    (
    select  student_id, subject,
            FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date) as first_score,
            FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date desc) as latest_score
    FROM    Scores) t
WHERE   latest_score > first_score
ORDER BY student_id, subject;