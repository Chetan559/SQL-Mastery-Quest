# SQL Problem: 584. Find Customer Referee

## Problem Statement

### Table: Customer

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |
| referee_id  | int     |

In this table, `id` is the primary key column for the table. Each row indicates the `id` of a customer, their `name`, and the `id` of the customer who referred them.

### Problem

Find the names of the customers that are **not** referred by the customer with `id = 2`.

Return the result table in any order.

### Example

#### Input

| id  | name | referee_id |
| --- | ---- | ---------- |
| 1   | Will | null       |
| 2   | Jane | null       |
| 3   | Alex | 2          |
| 4   | Bill | null       |
| 5   | Zack | 1          |
| 6   | Mark | 2          |

#### Output

| name |
| ---- |
| Will |
| Jane |
| Bill |
| Zack |

### Explanation

- Alex and Mark are referred by Jane (customer with `id = 2`).
- Will, Jane, Bill, and Zack are not referred by the customer with `id = 2`, so their names are returned in the result.
