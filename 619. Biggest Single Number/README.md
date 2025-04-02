# 619. Biggest Single Number

## Problem Description

Given a table `MyNumbers`, which contains an integer column `num`, find the largest single number. A single number is defined as a number that appears only once in the `MyNumbers` table. If there is no such single number, return `null`.

### SQL Schema

The table `MyNumbers` has the following structure:

| Column Name | Type |
| ----------- | ---- |
| num         | int  |

The table may contain duplicates, meaning there is no primary key for this table.

### Requirements

- Find the largest number that appears only once in the `MyNumbers` table.
- If there is no such number, return `null`.

### Example 1

**Input:**

`MyNumbers` table:

| num |
| --- |
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

**Output:**

| num |
| --- |
| 6   |

**Explanation:**

The single numbers are `1, 4, 5, 6`. Since `6` is the largest single number, we return it.

### Example 2

**Input:**

`MyNumbers` table:

| num |
| --- |
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

**Output:**

| num  |
| ---- |
| null |

**Explanation:**

There are no single numbers in the input table, so we return `null`.
