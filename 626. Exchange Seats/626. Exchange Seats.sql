-- Write your PostgreSQL query statement below
WITH cte AS (SELECT id, student, LEAD(id) OVER(), LAG(id) OVER() FROM Seat)

SELECT 
COALESCE(CASE WHEN (id % 2 = 1) THEN lead ELSE lag END, id) AS id, 
student 
FROM cte
ORDER BY id;