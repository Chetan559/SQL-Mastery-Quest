-- Write your PostgreSQL query statement below
WITH cte AS(SELECT product_id, MAX(change_date) AS change_date FROM Products
            WHERE change_date <= '2019-08-16'
            GROUP BY product_id )

SELECT DISTINCT p.product_id, (CASE WHEN cte.product_id IS NOT NULL THEN p.new_price ELSE 10 END) AS price
FROM Products p
LEFT JOIN cte ON p.product_id = cte.product_id 
WHERE p.change_date = cte.change_date  OR (cte.product_id IS NULL);
