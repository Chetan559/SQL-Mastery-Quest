-- Write your PostgreSQL query statement below
SELECT user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS name FROM Users
ORDER BY user_id;

-- REFER https://datalemur.com/sql-tutorial/sql-string-text

