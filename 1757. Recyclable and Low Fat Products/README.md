# 1757. Recyclable and Low Fat Products

## Problem Statement

You are given a table `Products` with the following schema:

### Table: Products

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| low_fats    | enum |
| recyclable  | enum |

- `product_id` is the primary key (unique identifier) for this table.
- `low_fats` is an ENUM (`'Y'`, `'N'`), where `'Y'` indicates the product is low fat, and `'N'` means it is not.
- `recyclable` is an ENUM (`'Y'`, `'N'`), where `'Y'` means the product is recyclable, and `'N'` means it is not.

### Task

Write a SQL query to find the `product_id` of products that are both low fat (`low_fats = 'Y'`) and recyclable (`recyclable = 'Y'`).

### Expected Output Format

The result should be a table with the following structure:

| product_id |
| ---------- |
| 1          |
| 3          |

### Example

#### Input

**Products Table:**
| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0 | Y | N |
| 1 | Y | Y |
| 2 | N | Y |
| 3 | Y | Y |
| 4 | N | N |

#### Output

| product_id |
| ---------- |
| 1          |
| 3          |

### Explanation

- The `WHERE` clause filters only those rows where `low_fats` is `'Y'` and `recyclable` is `'Y'`.
- The `SELECT` statement retrieves only the `product_id` column.
- The result is returned in any order.
