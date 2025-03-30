# Write your MySQL query statement below
WITH cte AS(
    SELECT p.product_id, u.purchase_date, p.price, u.units, ROUND(p.price * u. units) AS sp from Prices p
    LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
    AND (p.start_date <= u.purchase_date AND p.end_date >= u.purchase_date)
)

SELECT product_id, ROUND(COALESCE(SUM(sp)/NULLIF(SUM(units),0), 0), 2) AS average_price FROM cte
GROUP BY product_id;