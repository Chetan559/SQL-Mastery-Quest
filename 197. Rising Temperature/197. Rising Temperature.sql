-- Write your PostgreSQL query statement below
SELECT t.id from Weather t
Join Weather tm on t.recordDate = tm.recordDate + INTERVAL '1 day'
where t.temperature > tm.temperature;