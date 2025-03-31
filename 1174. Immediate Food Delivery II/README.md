# 1174. Immediate Food Delivery II

## Medium

### Topics:

- Companies
- SQL Schema
- Pandas Schema

## Problem Description

### Table: Delivery

| Column Name                 | Type |
| --------------------------- | ---- |
| delivery_id                 | int  |
| customer_id                 | int  |
| order_date                  | date |
| customer_pref_delivery_date | date |

- `delivery_id` is the column of unique values of this table.
- The table holds information about food delivery to customers who make orders at a specific date and specify a preferred delivery date (on the same order date or after it).

If the customer's preferred delivery date is the same as the order date, then the order is called **immediate**; otherwise, it is called **scheduled**.

The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.

### Task

Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

---

### Example

#### Input:

Delivery table:
| delivery_id | customer_id | order_date | customer_pref_delivery_date |
|-------------|-------------|-------------|-----------------------------|
| 1 | 1 | 2019-08-01 | 2019-08-02 |
| 2 | 2 | 2019-08-02 | 2019-08-02 |
| 3 | 1 | 2019-08-11 | 2019-08-12 |
| 4 | 3 | 2019-08-24 | 2019-08-24 |
| 5 | 3 | 2019-08-21 | 2019-08-22 |
| 6 | 2 | 2019-08-11 | 2019-08-13 |
| 7 | 4 | 2019-08-09 | 2019-08-09 |

#### Output:

| immediate_percentage |
| -------------------- |
| 50.00                |

#### Explanation:

- The customer with ID `1` has a first order with `delivery_id = 1`, which is **scheduled**.
- The customer with ID `2` has a first order with `delivery_id = 2`, which is **immediate**.
- The customer with ID `3` has a first order with `delivery_id = 5`, which is **scheduled**.
- The customer with ID `4` has a first order with `delivery_id = 7`, which is **immediate**.

Hence, half of the customers have **immediate** first orders.

### Constraints

- The data contains multiple orders per customer, but only the first order per customer is relevant.
- The result should be formatted to two decimal places.

---
