-- Write your PostgreSQL query statement below
WITH cte AS (SELECT product_id, TO_CHAR(order_date, 'YYYY-MM') AS order_date, SUM(unit) AS unit
            FROM Orders
            GROUP BY product_id, TO_CHAR(order_date, 'YYYY-MM')
            HAVING TO_CHAR(order_date, 'YYYY-MM') = '2020-02')

SELECT p.product_name, cte.unit FROM Products p
LEFT JOIN cte ON p.product_id = cte.product_id
WHERE unit >= 100;