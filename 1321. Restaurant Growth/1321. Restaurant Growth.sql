-- Write your PostgreSQL query statement below
WITH cte AS (
    SELECT 
        visited_on,
        SUM(amount) OVER(ORDER BY visited_on RANGE BETWEEN INTERVAL '6 days' PRECEDING AND CURRENT ROW ) AS amount
    FROM Customer)

SELECT DISTINCT visited_on, amount, ROUND(amount / 7.0, 2) AS average_amount 
FROM cte
WHERE visited_on >= (SELECT MIN(visited_on) FROM Customer) + INTERVAL '6 days'
ORDER BY visited_on;

-- WITH cte AS (
--     SELECT 
--         visited_on,
--         SUM(amount) OVER(PARTITION BY visited_on) AS amount, 
--         LAG(amount, 1) OVER(ORDER BY visited_on) AS day6, 
--         LAG(amount, 2) OVER(ORDER BY visited_on) AS day5, 
--         LAG(amount, 3) OVER(ORDER BY visited_on) AS day4, 
--         LAG(amount, 4) OVER(ORDER BY visited_on) AS day3, 
--         LAG(amount, 5) OVER(ORDER BY visited_on) AS day2, 
--         LAG(amount, 6) OVER(ORDER BY visited_on) AS day1
--     FROM Customer
--     ORDER BY visited_on)

-- SELECT DISTINCT visited_on,
--     amount + day1 + day2 + day3 + day4 + day5 + day6 AS amount,
--     ROUND((amount + day1 + day2 + day3 + day4 + day5 + day6) / 7.0, 2) AS average_amount
-- FROM cte
-- WHERE day1 IS NOT NULL
-- ORDER BY visited_on;


-- GROUP BY visited_on
-- ORDER BY visited_on;
-- SELECT visited_on, amount, ROUND(amount/7, 2) AS average_amount FROM cte
-- WHERE amount IS NOT NULL;


-- SELECT visited_on, SUM(amount) OVER(PARTITION BY visited_on ) FROM Customer