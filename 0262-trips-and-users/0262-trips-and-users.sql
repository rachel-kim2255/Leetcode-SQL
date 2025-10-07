-- SELECT
--   Trips.request_at AS Day,
--   ROUND(SUM(Trips.status != 'completed') / COUNT(*), 2) AS 'Cancellation Rate'
-- FROM Trips
-- INNER JOIN Users AS Clients
--   ON (Trips.client_id = Clients.users_id)
-- INNER JOIN Users AS Drivers
--   ON (Trips.driver_id = Drivers.users_id)
-- WHERE Clients.banned = 'No'
--   AND Drivers.banned = 'No'
--   AND Trips.request_at BETWEEN '2013-10-01' AND '2013-10-03'
-- GROUP BY 1;



-- SELECT 
--     t.request_at AS `Day`,
--     ROUND(
--         SUM(t.status IN ('cancelled_by_driver','cancelled_by_client')) / COUNT(*),
--         2
--     ) AS `Cancellation Rate`
-- FROM Trips t
-- JOIN Users u  ON t.client_id = u.users_id
-- JOIN Users ud ON t.driver_id = ud.users_id
-- WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
--   AND u.banned = 'No'
--   AND ud.banned = 'No'
-- GROUP BY `Day`;

SELECT  t.request_at as 'Day',
        ROUND((count(CASE WHEN t.status LIKE 'cancelled%' THEN 1 END) / COUNT(*)), 2) as 'Cancellation Rate'
FROM    Trips as t 
        JOIN Users as u ON t.client_id = u.users_id
        JOIN Users as ud ON t.driver_id = ud.users_id
WHERE   t.request_at BETWEEN '2013-10-01' and '2013-10-03'
        AND u.banned = 'No'
        AND ud.banned ='No'
GROUP BY   t.request_at
ORDER BY   t.request_at asc;




-- with k as (
-- SELECT  t.request_at as 'Day', t.status, t.client_id
-- FROM    Users as u right JOIN Trips as t  
--         ON t.client_id = u.users_id
--         left JOIN Users as ud 
--         ON t.driver_id = ud.users_id
-- WHERE   t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
--         AND (u.banned = 'No' and ud.banned='No')
-- )
-- SELECT  k.Day, 
--         ROUND((count(CASE WHEN k.status like 'cancelled%' THEN 1 END) / count(k.client_id)),2) as 'Cancellation Rate'
-- FROM    k 
-- GROUP BY k.Day
