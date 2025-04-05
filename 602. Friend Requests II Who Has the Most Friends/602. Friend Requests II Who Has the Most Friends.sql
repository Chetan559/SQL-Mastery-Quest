-- Write your PostgreSQL query statement below
WITH requester AS(SELECT requester_id AS id, COUNT(*) AS num 
                  FROM RequestAccepted
                  GROUP BY requester_id),
      accepter AS(SELECT accepter_id AS id, COUNT(*) AS num 
                  FROM RequestAccepted
                  GROUP BY accepter_id),
           cte AS(SELECT * FROM requester UNION ALL SELECT * FROM accepter)   

SELECT id, SUM(num) AS num FROM cte
GROUP BY id
ORDER BY num DESC
LIMIT 1; 