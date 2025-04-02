# 1045. Customers Who Bought All Products

## Problem Description

We are given two tables:

### Table: Customer

| Column Name | Type |
| ----------- | ---- |
| customer_id | int  |
| product_key | int  |

The `Customer` table may contain duplicate rows. `customer_id` is not NULL. `product_key` is a foreign key that references the `Product` table.

### Table: Product

| Column Name | Type |
| ----------- | ---- |
| product_key | int  |

`product_key` is the primary key of the `Product` table.

---

## Task

Write a SQL query to find the `customer_id` values from the `Customer` table who have bought **all** the products listed in the `Product` table. Return the result in any order.

---

## Example

### Input:

**Customer table:**
| customer_id | product_key |
|-------------|-------------|
| 1 | 5 |
| 2 | 6 |
| 3 | 5 |
| 3 | 6 |
| 1 | 6 |

**Product table:**
| product_key |
|-------------|
| 5 |
| 6 |

### Output:

| customer_id |
| ----------- |
| 1           |
| 3           |

### Explanation:

- Customer with `id = 1` has bought products with `product_key = 5` and `product_key = 6`, so they bought all products.
- Customer with `id = 3` has also bought products with `product_key = 5` and `product_key = 6`, so they also bought all products.

---
