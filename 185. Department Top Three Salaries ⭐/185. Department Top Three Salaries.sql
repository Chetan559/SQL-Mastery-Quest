-- Write your PostgreSQL query statement below
WITH cte AS (SELECT id, DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rank FROM Employee)

SELECT d.name AS Department, e.name AS Employee, e.salary FROM Employee e
LEFT JOIN Department d ON e.departmentId = d.id
LEFT JOIN cte ON e.id = cte.id
WHERE cte.rank <= 3;