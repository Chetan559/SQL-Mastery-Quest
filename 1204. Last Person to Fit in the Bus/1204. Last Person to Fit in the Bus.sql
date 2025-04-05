-- Write your PostgreSQL query statement below
WITH cte AS (SELECT *, 
                    SUM(weight) OVER(ORDER BY turn) AS cummulative
            FROM Queue)

-- SELECT * FROM cte
SELECT person_name FROM cte
WHERE cummulative <= 1000 
ORDER BY cummulative DESC
LIMIT 1;