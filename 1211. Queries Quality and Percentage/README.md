# Problem: Queries Quality and Percentage

## Problem Description

You are given a table `Queries` which contains information collected from some queries on a database. The table may contain duplicate rows.

The `position` column has a value from 1 to 500, and the `rating` column has a value from 1 to 5. A query with a rating less than 3 is considered a poor query.

### Definitions

1. **Query Quality**: The average of the ratio between query rating and its position.

   \[
   \text{Query Quality} = \frac{1}{n} \sum\_{i=1}^{n} \frac{\text{rating}\_i}{\text{position}\_i}
   \]
   Where \(n\) is the number of queries for each `query_name`.

2. **Poor Query Percentage**: The percentage of all queries with a rating less than 3.

   \[
   \text{Poor Query Percentage} = \frac{\text{Count of Poor Queries}}{\text{Total Queries}} \times 100
   \]
   A query is considered poor if its rating is less than 3.

### Input

#### Queries Table:

| query_name | result           | position | rating |
| ---------- | ---------------- | -------- | ------ |
| Dog        | Golden Retriever | 1        | 5      |
| Dog        | German Shepherd  | 2        | 5      |
| Dog        | Mule             | 200      | 1      |
| Cat        | Shirazi          | 5        | 2      |
| Cat        | Siamese          | 3        | 3      |
| Cat        | Sphynx           | 7        | 4      |

### Output

You need to return a result table showing for each `query_name`:

- `quality`: The average of the ratio between query rating and its position, rounded to 2 decimal places.
- `poor_query_percentage`: The percentage of queries with a rating less than 3, rounded to 2 decimal places.

The result table should be ordered by `query_name` in any order.

#### Example:

**Input:**

| query_name | result           | position | rating |
| ---------- | ---------------- | -------- | ------ |
| Dog        | Golden Retriever | 1        | 5      |
| Dog        | German Shepherd  | 2        | 5      |
| Dog        | Mule             | 200      | 1      |
| Cat        | Shirazi          | 5        | 2      |
| Cat        | Siamese          | 3        | 3      |
| Cat        | Sphynx           | 7        | 4      |

**Output:**

| query_name | quality | poor_query_percentage |
| ---------- | ------- | --------------------- |
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |

**Explanation:**

- For the Dog queries:

  - Quality: \(\frac{(5 / 1) + (5 / 2) + (1 / 200)}{3} = 2.50\)
  - Poor query percentage: \(\frac{1}{3} \times 100 = 33.33\%\)

- For the Cat queries:
  - Quality: \(\frac{(2 / 5) + (3 / 3) + (4 / 7)}{3} = 0.66\)
  - Poor query percentage: \(\frac{1}{3} \times 100 = 33.33\%\)
