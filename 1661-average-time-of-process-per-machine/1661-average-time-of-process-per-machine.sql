# activity: pk(machine_id, process_id, activity_type)

with k as (
SELECT  a1.machine_id, a1.process_id,
        (a2.timestamp-a1.timestamp) as times      
FROM    activity a1 LEFT JOIN activity a2 
        on a1.machine_id = a2.machine_id 
        and a1.process_id = a2.process_id
        and a1.activity_type <> a2.activity_type
WHERE   a1.activity_type ='start')
SELECT  machine_id, 
        round(avg(times),3) as processing_time
FROM    k
GROUP BY machine_id