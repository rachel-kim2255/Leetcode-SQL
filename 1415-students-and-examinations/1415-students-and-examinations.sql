
select  s.student_id, s.student_name, u.subject_name, count(e.subject_name) as attended_exams
FROM    Students as s CROSS JOIN Subjects as u
        LEFT JOIN Examinations as e 
        ON s.student_id = e.student_id
        AND u.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, u.subject_name
ORDER BY s.student_id asc;