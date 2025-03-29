-- Write your PostgreSQL query statement below
WITH confirmed AS(SELECT user_id,
                    COUNT(action) AS cnf
                FROM Confirmations
                WHERE action = 'confirmed'
                GROUP BY user_id),

total AS (SELECT user_id,
                COUNT(action) AS counts
          FROM Confirmations
          GROUP BY user_id)

SELECT s.user_id, ROUND(COALESCE((c.cnf / NULLIF(t.counts,0)), 0), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN total t ON s.user_id = t.user_id
LEFT JOIN confirmed c ON t.user_id = c.user_id;

             

