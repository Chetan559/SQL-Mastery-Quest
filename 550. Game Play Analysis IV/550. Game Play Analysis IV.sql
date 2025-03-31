-- Write your PostgreSQL query statement below
WITH first_time AS(  SELECT player_id, MIN(event_date) AS fl
                FROM Activity
                GROUP BY player_id),

second_time AS (SELECT a.player_id, a.event_date          
                FROM Activity a
                JOIN first_time fd ON a.player_id = fd.player_id 
                WHERE a.event_date = (fl + INTERVAL '1 DAY')  
)

SELECT ROUND(COUNT(DISTINCT st.player_id)/COUNT(DISTINCT a.player_id)::numeric, 2) AS fraction FROM Activity a
LEFT JOIN second_time st ON a.player_id = st.player_id AND a.event_date = st. event_date;


--  REJECTED CODE BELOW

-- WITH cte AS(SELECT player_id, event_date, 
--                 LEAD(event_date) OVER(PARTITION BY player_id ORDER BY event_date) AS snd          
--             FROM Activity
--             ORDER BY player_id ),

-- total AS(SELECT player_id, count(DISTINCT player_id) AS num FROM Activity)

-- SELECT ROUND(COUNT(DISTINCT cte.player_id)/num,2) AS fraction FROM cte 
-- JOIN total t ON 1 = 1 
-- WHERE DATEDIFF(snd, event_date) = 1;