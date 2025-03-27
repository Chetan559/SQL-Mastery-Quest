# 197. Rising Temperature

## Problem Description

We are given a table called **Weather** that contains information about the temperature on a certain day.

### Weather Table:

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| recordDate  | date |
| temperature | int  |

- **id** is the unique identifier for each row.
- **recordDate** is the date of the temperature record.
- **temperature** is the temperature recorded on that day.

There are no duplicate rows with the same `recordDate`.

### Task:

Write a query to find all dates' **id** where the temperature is higher compared to the previous day (yesterday).

Return the result table in any order.

### Output Format:

The result should include the following column:

| Column Name | Type |
| ----------- | ---- |
| id          | int  |

### Example:

**Input:**

Weather table:
| id | recordDate | temperature |
|-----|------------|-------------|
| 1 | 2015-01-01 | 10 |
| 2 | 2015-01-02 | 25 |
| 3 | 2015-01-03 | 20 |
| 4 | 2015-01-04 | 30 |

**Output:**
| id |
|-----|
| 2 |
| 4 |

### Explanation:

- On **2015-01-02**, the temperature was higher than the previous day (10 -> 25).
- On **2015-01-04**, the temperature was higher than the previous day (20 -> 30).

### Requirements:

- Identify all dates where the temperature on that day is higher than the previous day.
