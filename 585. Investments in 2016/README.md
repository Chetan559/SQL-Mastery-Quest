# Problem: Investments in 2016

## Problem Statement

You are given a table `Insurance` which contains information about various policyholders and their total investment values (TIV) for the years 2015 and 2016.

### Table: Insurance

| Column Name | Type  |
| ----------- | ----- |
| pid         | int   |
| tiv_2015    | float |
| tiv_2016    | float |
| lat         | float |
| lon         | float |

- `pid` is the primary key (column with unique values) for this table.
- `tiv_2015` is the total investment value in 2015.
- `tiv_2016` is the total investment value in 2016.
- `lat` is the latitude of the policyholder's city.
- `lon` is the longitude of the policyholder's city.

### Task

Write a solution to report the sum of all total investment values in 2016 (`tiv_2016`), for all policyholders who:

1. Have the same `tiv_2015` value as one or more other policyholders.
2. Are not located in the same city as any other policyholder (i.e., the `(lat, lon)` attribute pairs must be unique).

### Output

- Round `tiv_2016` to two decimal places.

### Example

#### Input

| pid | tiv_2015 | tiv_2016 | lat | lon |
| --- | -------- | -------- | --- | --- |
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |

#### Output

| tiv_2016 |
| -------- |
| 45.00    |

#### Explanation

- The first record in the table, like the last record, meets both of the two criteria:
  - `tiv_2015` value of 10 is the same as the third and fourth records.
  - The location `(10, 10)` is unique.
- The second record does not meet any of the two criteria:
  - Its `tiv_2015` is not like any other policyholders.
  - Its location `(20, 20)` is the same as the third record.

Therefore, the result is the sum of `tiv_2016` of the first and last record, which is 45.00.
