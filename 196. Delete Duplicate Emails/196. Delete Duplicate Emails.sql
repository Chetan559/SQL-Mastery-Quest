-- Write your PostgreSQL query statement below
DELETE FROM Person
WHERE email NOT IN (SELECT email FROM Person GROUP BY email HAVING COUNT(*) = 1)
    AND id NOT IN (SELECT MIN(id) as id FROM Person GROUP BY email HAVING COUNT(*) > 1);

