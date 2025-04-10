-- Write your PostgreSQL query statement below
SELECT ROUND(SUM(tiv_2016)::numeric, 2) AS tiv_2016 FROM Insurance
WHERE lat IN (SELECT lat FROM Insurance GROUP BY lat, lon HAVING COUNT(*) = 1)
    AND lon IN (SELECT lon FROM Insurance GROUP BY lat, lon HAVING COUNT(*) = 1)
    AND tiv_2015 IN (SELECT tiv_2015 FROM Insurance GROUP BY tiv_2015 HAVING COUNT(*) > 1);