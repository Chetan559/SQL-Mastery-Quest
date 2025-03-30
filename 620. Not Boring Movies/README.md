# 620. Not Boring Movies

## Problem Description

Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.

### Table: Cinema

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| movie       | varchar |
| description | varchar |
| rating      | float   |

- `id` is the primary key (column with unique values) for this table.
- Each row contains information about the name of a movie, its genre, and its rating.
- `rating` is a 2 decimal places float in the range [0, 10].

### Solution Requirements

You need to:

- Report the movies with an odd-numbered ID.
- Exclude movies where the description is "boring".
- Order the result by the rating in descending order.

### Example

#### Input

**Cinema table:**

| id  | movie      | description | rating |
| --- | ---------- | ----------- | ------ |
| 1   | War        | great 3D    | 8.9    |
| 2   | Science    | fiction     | 8.5    |
| 3   | Irish      | boring      | 6.2    |
| 4   | Ice song   | Fantasy     | 8.6    |
| 5   | House card | Interesting | 9.1    |

#### Output

| id  | movie      | description | rating |
| --- | ---------- | ----------- | ------ |
| 5   | House card | Interesting | 9.1    |
| 1   | War        | great 3D    | 8.9    |

#### Explanation:

We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring, so it is not included in the answer.
