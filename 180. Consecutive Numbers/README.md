# Problem: Consecutive Numbers

## Problem Description

You are given a table named `Logs` that records a sequence of numbers. Your task is to find all numbers that appear **at least three times consecutively**.

### Table: Logs

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| num         | varchar |

**Constraints:**

- `id` is the primary key for this table.
- `id` is an autoincrement column starting from 1.

## Example

### Input:

| id  | num |
| --- | --- |
| 1   | 1   |
| 2   | 1   |
| 3   | 1   |
| 4   | 2   |
| 5   | 1   |
| 6   | 2   |
| 7   | 2   |

### Output:

| ConsecutiveNums |
| --------------- |
| 1               |

### Explanation:

- The number `1` appears consecutively for 3 times in rows 1, 2, and 3.
- There are no other numbers that appear consecutively for at least three times.
