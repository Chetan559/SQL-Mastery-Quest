-- Write your PostgreSQL query statement below
SELECT activity_date AS day , COUNT(DISTINCT user_id) AS active_users FROM Activity
WHERE '2019-07-27'::DATE - activity_date < 30 AND activity_date <= '2019-07-27'
GROUP BY activity_date 