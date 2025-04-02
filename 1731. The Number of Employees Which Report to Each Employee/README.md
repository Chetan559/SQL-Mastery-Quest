# 1731. The Number of Employees Which Report to Each Employee

## Problem Description

We are given a table `Employees` containing information about employees, including their `employee_id`, `name`, the `employee_id` of their manager (via `reports_to`), and their `age`.

The goal is to report the `employee_id` and the `name` of all **managers** (employees who have at least one other employee reporting to them), the number of employees who report directly to them, and the average age of these employees rounded to the nearest integer. The results should be ordered by `employee_id`.

### Table: Employees

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |
| reports_to  | int     |
| age         | int     |

- `employee_id` is the column with unique values.
- `reports_to` is `null` for employees who don't report to anyone.
- An employee is considered a **manager** if they have at least one direct report.

---

## Example

### Input 1:

**Employees table:**

| employee_id | name    | reports_to | age |
| ----------- | ------- | ---------- | --- |
| 9           | Hercy   | null       | 43  |
| 6           | Alice   | 9          | 41  |
| 4           | Bob     | 9          | 36  |
| 2           | Winston | null       | 37  |

### Output 1:

| employee_id | name  | reports_count | average_age |
| ----------- | ----- | ------------- | ----------- |
| 9           | Hercy | 2             | 39          |

### Explanation:

- **Hercy** has 2 people reporting directly to them: **Alice** (age 41) and **Bob** (age 36). Their average age is `(41 + 36) / 2 = 38.5`, rounded to `39`.
- **Winston** is not a manager as no one reports to them.

---

### Input 2:

**Employees table:**

| employee_id | name    | reports_to | age |
| ----------- | ------- | ---------- | --- |
| 1           | Michael | null       | 45  |
| 2           | Alice   | 1          | 38  |
| 3           | Bob     | 1          | 42  |
| 4           | Charlie | 2          | 34  |
| 5           | David   | 2          | 40  |
| 6           | Eve     | 3          | 37  |
| 7           | Frank   | null       | 50  |
| 8           | Grace   | null       | 48  |

### Output 2:

| employee_id | name    | reports_count | average_age |
| ----------- | ------- | ------------- | ----------- |
| 1           | Michael | 2             | 40          |
| 2           | Alice   | 2             | 37          |
| 3           | Bob     | 1             | 37          |

### Explanation:

- **Michael** is the manager of Alice and Bob, so they have 2 reports. The average age of Alice (38) and Bob (42) is `(38 + 42) / 2 = 40`.
- **Alice** is the manager of Charlie and David, so they have 2 reports. The average age of Charlie (34) and David (40) is `(34 + 40) / 2 = 37`.
- **Bob** is the manager of Eve, so they have 1 report. The average age of Eve (37) is `37`.

---
