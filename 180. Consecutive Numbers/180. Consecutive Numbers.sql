-- Write your PostgreSQL query statement below
SELECT num AS ConsecutiveNums FROM 
    (SELECT id, LEAD(num) OVER() leads, num, LAG(num) OVER() lags 
    FROM Logs)
WHERE leads = num AND num = lags
GROUP BY num;