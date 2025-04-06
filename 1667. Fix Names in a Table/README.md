# Problem: Fix Names in a Table

## Problem Statement

You are given a table `Users` which contains information about various users with their ID and name. The names are inconsistent and need to be corrected such that only the first character is uppercase and the rest are lowercase.

### Table: Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |

- `user_id` is the primary key (column with unique values) for this table.
- This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.

### Task

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase. Return the result table ordered by `user_id`.

### Example

#### Input

| user_id | name  |
| ------- | ----- |
| 1       | aLice |
| 2       | bOB   |

#### Output

| user_id | name  |
| ------- | ----- |
| 1       | Alice |
| 2       | Bob   |

#### Explanation

- For user_id 1, the name "aLice" is corrected to "Alice" by capitalizing the first letter and making the rest lowercase.
- For user_id 2, the name "bOB" is corrected to "Bob" by capitalizing the first letter and making the rest lowercase.

The result is returned ordered by `user_id`.
