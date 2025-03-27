-- Write your PostgreSQL query statement below
SELECT  A1.machine_id, ROUND(AVG(A1.timestamp - A2.timestamp)::numeric, 3) AS processing_time FROM (SELECT * FROM Activity WHERE activity_type = 'end') A1
JOIN (SELECT * FROM Activity WHERE activity_type = 'start') A2 ON A1.machine_id = A2.machine_id AND A1.process_id = A2.process_id 
GROUP BY A1.machine_id; 