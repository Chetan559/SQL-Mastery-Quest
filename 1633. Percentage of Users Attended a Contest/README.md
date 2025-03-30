# 1633. Percentage of Users Attended a Contest

## Description

You are given two tables, `Users` and `Register`, as described below:

### Table: Users

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| user_name   | varchar |

**Primary Key**: user_id

Each row of this table contains the name and the id of a user.

### Table: Register

| Column Name | Type |
| ----------- | ---- |
| contest_id  | int  |
| user_id     | int  |

**Primary Key**: (contest_id, user_id)

Each row of this table contains the id of a user and the contest they registered into.

### Goal

Write a query to find the percentage of users registered in each contest, rounded to two decimal places.

- Return the result table ordered by percentage in descending order.
- In case of a tie, order it by `contest_id` in ascending order.

### Example

#### Input:

`Users` table:

| user_id | user_name |
| ------- | --------- |
| 6       | Alice     |
| 2       | Bob       |
| 7       | Alex      |

`Register` table:

| contest_id | user_id |
| ---------- | ------- |
| 215        | 6       |
| 209        | 2       |
| 208        | 2       |
| 210        | 6       |
| 208        | 6       |
| 209        | 7       |
| 209        | 6       |
| 215        | 7       |
| 208        | 7       |
| 210        | 2       |
| 207        | 2       |
| 210        | 7       |

#### Output:

| contest_id | percentage |
| ---------- | ---------- |
| 208        | 100.0      |
| 209        | 100.0      |
| 210        | 100.0      |
| 215        | 66.67      |
| 207        | 33.33      |

#### Explanation:

- All users registered in contests 208, 209, and 210. The percentage for these contests is 100%, and they are sorted by `contest_id` in ascending order.
- Alice and Alex registered in contest 215, so the percentage is \(\left(\frac{2}{3}\right) \times 100 = 66.67\%\).
- Bob registered in contest 207, so the percentage is \(\left(\frac{1}{3}\right) \times 100 = 33.33\%\).
