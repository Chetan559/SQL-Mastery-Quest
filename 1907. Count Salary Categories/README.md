# 1907. Count Salary Categories

## Problem Description

We are given a table called `Accounts` which contains information about the monthly income for different bank accounts. The objective is to calculate the number of bank accounts for each salary category.

### Salary Categories:

- **Low Salary**: All the salaries strictly less than $20000.
- **Average Salary**: All the salaries in the inclusive range [$20000, $50000].
- **High Salary**: All the salaries strictly greater than $50000.

### Output:

The result should contain the salary category along with the count of accounts in that category. If a category has no accounts, return 0 for that category.

### Table: Accounts

| Column Name | Type |
| ----------- | ---- |
| account_id  | int  |
| income      | int  |

`account_id` is the primary key of this table.

### Example 1:

#### Input:

Accounts table:

| account_id | income |
| ---------- | ------ |
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |

#### Output:

| category       | accounts_count |
| -------------- | -------------- |
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |

#### Explanation:

- Low Salary: Account 2 has an income less than $20000.
- Average Salary: No accounts have an income in the range [$20000, $50000].
- High Salary: Accounts 3, 6, and 8 have an income greater than $50000.
