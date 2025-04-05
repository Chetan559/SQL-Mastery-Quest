-- Write your PostgreSQL query statement below
SELECT 'Low Salary' AS category, COALESCE(COUNT(income), 0) AS accounts_count 
FROM Accounts WHERE income < 20000
UNION 
SELECT 'Average Salary', COALESCE(COUNT(income), 0) AS accounts_count  -- 'Average Salary' AS category will be replaced with 'Average Salary' in the result set
FROM Accounts WHERE income >= 20000 AND income <= 50000
UNION 
SELECT 'High Salary', COALESCE(COUNT(income), 0) AS accounts_count 
FROM Accounts WHERE income > 50000;


-- -- Write your PostgreSQL query statement below
-- SELECT 'Low Salary' AS category, COALESCE(COUNT(income), 0) AS accounts_count 
-- FROM Accounts WHERE income < 20000
-- UNION 
-- SELECT 'Average Salary' AS category, COALESCE(COUNT(income), 0) AS accounts_count 
-- FROM Accounts WHERE income >= 20000 AND income <= 50000
-- UNION 
-- SELECT 'High Salary' AS category, COALESCE(COUNT(income), 0) AS accounts_count 
-- FROM Accounts WHERE income > 50000;