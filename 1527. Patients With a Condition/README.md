# Problem: Patients With a Condition

## Problem Statement

You are given a table `Patients` that contains information about patients in a hospital, including their `patient_id`, `patient_name`, and `conditions`. The `conditions` column contains one or more codes separated by spaces. You need to find the `patient_id`, `patient_name`, and `conditions` of patients who have Type I Diabetes, which always starts with the prefix "DIAB1".

### Table: Patients

| Column Name  | Type    |
| ------------ | ------- |
| patient_id   | int     |
| patient_name | varchar |
| conditions   | varchar |

- `patient_id` is the primary key (column with unique values) for this table.
- `conditions` contains 0 or more codes separated by spaces.
- The table contains information about the patients in the hospital.

### Task

Write a solution to find the `patient_id`, `patient_name`, and `conditions` of the patients who have Type I Diabetes. Type I Diabetes always starts with the "DIAB1" prefix.

### Output

Return the result table in any order.

### Example

#### Input

| patient_id | patient_name | conditions   |
| ---------- | ------------ | ------------ |
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

#### Output

| patient_id | patient_name | conditions   |
| ---------- | ------------ | ------------ |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

#### Explanation

- Bob and George both have a condition that starts with "DIAB1", which corresponds to Type I Diabetes. Therefore, they are included in the result.
- The other patients do not have any conditions that start with "DIAB1".
