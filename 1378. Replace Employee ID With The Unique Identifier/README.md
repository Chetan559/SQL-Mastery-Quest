# 1378. Replace Employee ID With The Unique Identifier

## Problem

You are given two tables, `Employees` and `EmployeeUNI`. The `Employees` table contains employee `id` and `name`, while the `EmployeeUNI` table contains the `id` of the employee and their corresponding `unique_id`.

Write a SQL query to show the `unique_id` of each employee. If an employee does not have a unique ID, show `null` instead.

### Table: Employees

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

- `id` is the primary key for this table.

### Table: EmployeeUNI

| Column Name | Type |
| ----------- | ---- |
| id          | int  |
| unique_id   | int  |

- `(id, unique_id)` is the primary key for this table.

### Query

Write a SQL query to return the `unique_id` of each employee. If an employee does not have a `unique_id`, return `null` for that employee.

### Example

#### Input

Employees table:

| id  | name     |
| --- | -------- |
| 1   | Alice    |
| 7   | Bob      |
| 11  | Meir     |
| 90  | Winston  |
| 3   | Jonathan |

EmployeeUNI table:

| id  | unique_id |
| --- | --------- |
| 3   | 1         |
| 11  | 2         |
| 90  | 3         |

#### Output

| unique_id | name     |
| --------- | -------- |
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

### Explanation

- Alice and Bob do not have a `unique_id`, so their `unique_id` will be `null`.
- Meir has `unique_id` 2.
- Winston has `unique_id` 3.
- Jonathan has `unique_id` 1.
