#### in this problem

```sql
-- Write your PostgreSQL query statement below
SELECT (CASE WHEN MAX(num) IS NOT NULL THEN MAX(num) ELSE "null" END) AS num FROM MyNumbers
GROUP BY num HAVING COUNT(num) = 1
ORDER BY num DESC
LIMIT 1;
```

#### doesn't work because in case when there is no single maximum number this returns nothing not even 'null'

#### we use subquery to generate null in case of no single maximum number
