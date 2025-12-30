SELECT  DISTINCT student_id, subject, first_score, latest_score
FROM    (
        SELECT  student_id, subject,
            FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date asc) as first_score,
            FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date desc) as latest_score
        FROM    Scores 
) AS k
WHERE   first_score < latest_score
ORDER BY student_id, subject;