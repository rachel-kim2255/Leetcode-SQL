# 8/4 

-- -- SELECT 
-- --     machine_id,
-- --     ROUND(SUM(
-- --           CASE WHEN activity_type = 'end' THEN timestamp ELSE -timestamp END) 
--             / COUNT(DISTINCT process_id), 3
-- --     ) AS processing_time
-- -- FROM Activity
-- -- GROUP BY machine_id;

SELECT  machine_id,
        round(SUM(CASE WHEN activity_type = 'end' then timestamp else - timestamp end) / 
        COUNT(DISTINCT process_id), 3)
        as processing_time
FROM    Activity
GROUP BY machine_id

















-- # activity: pk(machine_id, process_id, activity_type)



-- SELECT  a1.machine_id,
--         round(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
-- FROM    activity a1 JOIN activity a2
--         ON a1.machine_id = a2.machine_id 
--         AND a1.process_id = a2.process_id
--         AND a2.activity_type = 'end'
--         AND a1.activity_type = 'start'
-- GROUP BY a1.machine_id;

