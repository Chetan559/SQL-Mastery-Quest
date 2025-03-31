# Write your MySQL query statement below
WITH first_order AS(SELECT customer_id, MIN(order_date) AS fod FROM Delivery GROUP BY  customer_id)

SELECT ROUND((SUM(CASE WHEN (fo.fod = d.order_date AND d.order_date = d.customer_pref_delivery_date) THEN 1 ELSE 0 END) / COUNT( fo.fod))*100,2) AS immediate_percentage FROM Delivery d
LEFT JOIN first_order fo ON d.customer_id =fo.customer_id AND d.order_date = fo.fod
WHERE fo.fod IS NOT NULL;