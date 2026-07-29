# 7.27 실패햇느데 다음부터 다시 해보샘

with temp as (
select  *
from    students as s CROSS JOIN subjects as sub),
temp2 as(
    select student_id, subject_name, count(*) as attended_exam
    from    examinations 
    group by student_id, subject_name
)
select t.student_id, t.student_name, t.subject_name,
        (case when e.attended_exam is null then 0 else e.attended_exam end) as attended_exams
from    temp as t LEFT JOIN temp2 as e ON t.student_id = e.student_id and t.subject_name = e.subject_name
order by t.student_id, t.subject_name

-- select  t.student_id, t.student_name, e.subject_name, count(*) as attended_exam
-- from    temp as t LEFT JOIN examinations as e
--         on t.student_id = e.student_id and t.subject_name = e.subject_name
-- group by t.student_id, e.subject_name


