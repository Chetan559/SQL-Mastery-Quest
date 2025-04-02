-- Write your PostgreSQL query statement below
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y' OR employee_id IN 
    (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(department_id) = 1
    )
GROUP BY employee_id, department_id

            


-- BELOW ALL CODE IS USELESS AND NOT WORKING
-- -- Write your PostgreSQL query statement below
--             -- SELECT employee_id, department_id
--             -- FROM Employee
--             -- WHERE primary_flag = 'Y'
--             -- GROUP BY employee_id, department_id

            
--             SELECT employee_id
--             FROM Employee
--             -- WHERE
--             GROUP BY employee_id, department_id
--             -- HAVING COUNT(department_id) = 1

-- -- SELECT employee_id, 
-- -- CASE WHEN (primary_flag = 'Y' OR (primary_flag = 'N' AND COUNT(department_id) = 1)) THEN department_id END 
-- -- FROM Employee
-- -- GROUP BY employee_id, primary_flag, department_id