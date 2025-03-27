# 1581. Customer Who Visited but Did Not Make Any Transactions

## Problem Description

We are provided with two tables:

### Visits Table:

This table contains the following columns:
| Column Name | Type |
|-------------|---------|
| visit_id | int |
| customer_id | int |

- **visit_id** is a unique identifier for each visit.
- Each row represents a visit made by a customer to the mall.

### Transactions Table:

This table contains the following columns:
| Column Name | Type |
|----------------|---------|
| transaction_id | int |
| visit_id | int |
| amount | int |

- **transaction_id** is a unique identifier for each transaction.
- Each row represents a transaction made during a visit.

## Task:

We need to find the **customer_id** of customers who visited the mall but did not make any transactions. Additionally, for each such customer, we need to return the number of times they visited without making any transactions.

### Output Format:

Return a table with the following columns:

| Column Name    | Type |
| -------------- | ---- |
| customer_id    | int  |
| count_no_trans | int  |

The result should include the `customer_id` and the number of visits (`count_no_trans`) where the customer visited but did not make any transactions.

The result should be sorted in any order.

### Example:

**Input:**

Visits table:
| visit_id | customer_id |
|----------|-------------|
| 1 | 23 |
| 2 | 9 |
| 4 | 30 |
| 5 | 54 |
| 6 | 96 |
| 7 | 54 |
| 8 | 54 |

Transactions table:
| transaction_id | visit_id | amount |
|----------------|----------|--------|
| 2 | 5 | 310 |
| 3 | 5 | 300 |
| 9 | 5 | 200 |
| 12 | 1 | 910 |
| 13 | 2 | 970 |

**Output:**

| customer_id | count_no_trans |
| ----------- | -------------- |
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |

### Explanation:

- Customer with **id = 23** visited the mall once and made one transaction during the visit with id = 12.
- Customer with **id = 9** visited the mall once and made one transaction during the visit with id = 13.
- Customer with **id = 30** visited the mall once and did not make any transactions.
- Customer with **id = 54** visited the mall three times. During 2 visits they did not make any transactions, and during one visit they made 3 transactions.
- Customer with **id = 96** visited the mall once and did not make any transactions.

### Requirements:

- Identify customers who visited but did not make any transactions.
- Count how many times each customer visited without making transactions.
