-- Write your PostgreSQL query statement below
WITH cte as(SELECT managerId, COUNT(managerId) AS direct_reports
            FROM Employee
            GROUP BY managerId
)

SELECT e.name FROM Employee e
LEFT JOIN cte ON e.id = cte.managerId
WHERE direct_reports >=5;~