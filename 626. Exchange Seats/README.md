# 626. Exchange Seats

## Problem Description

We are given a table called `Seat` which contains information about students' seating arrangements. Each row indicates the name of a student and their seat `id`. The IDs start from 1 and increment continuously.

The task is to swap the seat IDs of every two consecutive students. If the number of students is odd, the ID of the last student will not be swapped.

### Input Table: Seat

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| student     | varchar |

- `id` is the primary key column for this table.
- The ID sequence always starts from 1 and increments continuously.

### Output:

Return the result table with the students' names after swapping the seats of every two consecutive students. The result table should be ordered by `id` in ascending order.

### Example 1:

#### Input:

Seat table:

| id  | student |
| --- | ------- |
| 1   | Abbot   |
| 2   | Doris   |
| 3   | Emerson |
| 4   | Green   |
| 5   | Jeames  |

#### Output:

| id  | student |
| --- | ------- |
| 1   | Doris   |
| 2   | Abbot   |
| 3   | Green   |
| 4   | Emerson |
| 5   | Jeames  |

#### Explanation:

- The first two students, Abbot and Doris, have their seats swapped.
- The next two students, Emerson and Green, have their seats swapped.
- The last student, Jeames, does not have a pair and remains in the same seat.
