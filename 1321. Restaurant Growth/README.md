# Restaurant Growth Analysis

## Problem Statement

You are the restaurant owner and you want to analyze a possible expansion. The goal is to compute the moving average of how much customers paid over a seven-day window, i.e., for each day, the average of the amount spent by customers from the current day and the six previous days.

The result should include the following:

- `visited_on`: The date of the customer visit.
- `amount`: The total amount paid on that particular visit.
- `average_amount`: The moving average of the total amount paid over the previous 7 days (rounded to two decimal places).

### SQL Schema

The following table schema is provided for customer transaction data:

#### Customer Table

| Column Name | Type    |
| ----------- | ------- |
| customer_id | int     |
| name        | varchar |
| visited_on  | date    |
| amount      | int     |

- **Primary Key**: The combination of `customer_id` and `visited_on` is the primary key.
- **visited_on**: The date on which the customer visited the restaurant.
- **amount**: The total paid by the customer for that visit.

---

## Solution

### SQL Query

```sql
SELECT
    visited_on,
    SUM(amount) AS amount,
    ROUND(AVG(amount) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
FROM
    Customer
GROUP BY
    visited_on
HAVING
    COUNT(*) >= 7
ORDER BY
    visited_on;
# Restaurant Growth

## Problem Description

You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).

Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). The `average_amount` should be rounded to two decimal places.

Return the result table ordered by `visited_on` in ascending order.

### Table: Customer

| Column Name   | Type    |
| ------------- | ------- |
| customer_id   | int     |
| name          | varchar |
| visited_on    | date    |
| amount        | int     |

In SQL, `(customer_id, visited_on)` is the primary key for this table. This table contains data about customer transactions in a restaurant. `visited_on` is the date on which the customer with ID (`customer_id`) has visited the restaurant. `amount` is the total paid by a customer.

---

## Example

### Input

**Customer table:**

| customer_id | name   | visited_on | amount |
|-------------|--------|------------|--------|
| 1           | Jhon   | 2019-01-01 | 100    |
| 2           | Daniel | 2019-01-02 | 110    |
| 3           | Jade   | 2019-01-03 | 120    |
| 4           | Khaled | 2019-01-04 | 130    |
| 5           | Winston| 2019-01-05 | 110    |
| 6           | Elvis  | 2019-01-06 | 140    |
| 7           | Anna   | 2019-01-07 | 150    |
| 8           | Maria  | 2019-01-08 | 80     |
| 9           | Jaze   | 2019-01-09 | 110    |
| 1           | Jhon   | 2019-01-10 | 130    |
| 3           | Jade   | 2019-01-10 | 150    |

### Output

| visited_on   | amount | average_amount |
|--------------|--------|----------------|
| 2019-01-07   | 860    | 122.86         |
| 2019-01-08   | 840    | 120            |
| 2019-01-09   | 840    | 120            |
| 2019-01-10   | 1000   | 142.86         |

### Explanation

1. The 1st moving average from `2019-01-01` to `2019-01-07` has an average amount of `(100 + 110 + 120 + 130 + 110 + 140 + 150)/7 = 122.86`.
2. The 2nd moving average from `2019-01-02` to `2019-01-08` has an average amount of `(110 + 120 + 130 + 110 + 140 + 150 + 80)/7 = 120`.
3. The 3rd moving average from `2019-01-03` to `2019-01-09` has an average amount of `(120 + 130 + 110 + 140 + 150 + 80 + 110)/7 = 120`.
4. The 4th moving average from `2019-01-04` to `2019-01-10` has an average amount of `(130 + 110 + 140 + 150 + 80 + 110 + 130 + 150)/7 = 142.86`.
```
