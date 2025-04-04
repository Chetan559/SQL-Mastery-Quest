# 1729. Find Followers Count

**Easy**

## Topics

- Companies

## SQL Schema

### Table: Followers

| Column Name | Type |
| ----------- | ---- |
| user_id     | int  |
| follower_id | int  |

- `(user_id, follower_id)` is the primary key (combination of columns with unique values) for this table.
- This table contains the IDs of a user and a follower in a social media app, where the follower follows the user.

## Problem Statement

Write a solution that will, for each user, return the number of followers.

Return the result table ordered by `user_id` in ascending order.

### Example

**Input:**

`Followers` table:

| user_id | follower_id |
| ------- | ----------- |
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

**Output:**

| user_id | followers_count |
| ------- | --------------- |
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

### Explanation:

- The followers of `user_id = 0` are `{1}`, so the count is 1.
- The followers of `user_id = 1` are `{0}`, so the count is 1.
- The followers of `user_id = 2` are `{0, 1}`, so the count is 2.
