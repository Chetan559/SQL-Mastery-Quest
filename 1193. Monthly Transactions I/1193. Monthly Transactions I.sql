-- Write your PostgreSQL query statement below
WITH approved AS (
                SELECT country, 
                    TO_CHAR(trans_date, 'YYYY-MM') AS month, 
                    SUM(amount) AS approved_total_amount,
                    COUNT(id) AS approved_count 
                FROM Transactions
                WHERE state = 'approved'
                GROUP BY country, month)

SELECT TO_CHAR(t.trans_date, 'YYYY-MM') AS month, 
    t.country, 
    COUNT(t.id) AS trans_count, 
    COALESCE(approved_count, 0) AS approved_count, 
    SUM(t.amount) AS trans_total_amount, 
    COALESCE(approved_total_amount, 0) AS approved_total_amount
FROM Transactions t
LEFT JOIN approved a 
ON (t.country = a.country OR (t.country IS NULL AND a.country IS NULL)) 
AND TO_CHAR(t.trans_date, 'YYYY-MM') = a.month
GROUP BY TO_CHAR(t.trans_date, 'YYYY-MM'), t.country, a.approved_count, a.approved_total_amount;