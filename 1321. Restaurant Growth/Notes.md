### In PostgreSQL, you can use intervals with window functions to define window frames based on time periods, allowing calculations like running totals or moving averages over specific time ranges.

#### Here's how you can use intervals with window functions:

- > RANGE Clause:
  > Use the RANGE clause within the OVER clause to specify a window frame based on intervals.
- > BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW:
  > This is the default frame when using ORDER BY and RANGE and calculates based on the current row and all preceding rows.
- > BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING:
  > This frame includes the current row and all following rows.
- > BETWEEN INTERVAL 'x' PRECEDING AND CURRENT ROW:
  > This frame includes the current row and rows within the preceding x interval.
- > BETWEEN CURRENT ROW AND INTERVAL 'x' FOLLOWING:
  > This frame includes the current row and rows within the following x interval.
- > ORDER BY Clause:
  > Specify an ORDER BY clause to define the order of rows within the window, which is essential for time-based calculations.
- > PARTITION BY Clause (Optional):
  > Use PARTITION BY to divide the data into partitions, allowing calculations to be performed independently within each partition.

### Example:

#### Let's say you have a table called sales with columns sales_date, product_id, and quantity. You want to calculate the running total of quantity for each product within a 7-day window:

```sql

SELECT
    sales_date,
    product_id,
    quantity,
    SUM(quantity) OVER (PARTITION BY product_id ORDER BY sales_date RANGE BETWEEN INTERVAL '7 days' PRECEDING AND CURRENT ROW) AS running_total
FROM
    sales
ORDER BY
    sales_date;
```

### Explanation:

- > PARTITION BY product_id: Calculates the running total separately for each product.
- > ORDER BY sales_date: Orders the rows within each partition by sales_date.
- > RANGE BETWEEN INTERVAL '7 days' PRECEDING AND CURRENT ROW: Defines the window frame as the current row and the 7 days preceding it.
- > SUM(quantity): Calculates the sum of quantity within the defined window frame.
- > AS running_total: Assigns an alias to the calculated sum
