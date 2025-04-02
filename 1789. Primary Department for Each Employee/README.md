# 1789. Primary Department for Each Employee

## Problem Description

We are given a table `Employee` containing information about employees, the departments they belong to, and whether the department is their primary department.

### Table: Employee

| Column Name   | Type    |
| ------------- | ------- |
| employee_id   | int     |
| department_id | int     |
| primary_flag  | varchar |

- The `(employee_id, department_id)` combination is the primary key of the table.
- `employee_id` is the id of the employee.
- `department_id` is the id of the department to which the employee belongs.
- `primary_flag` is a flag that can either be `'Y'` (indicating that this is the employee's primary department) or `'N'` (indicating that it is not the primary department).

**Note:**

- Employees can belong to multiple departments. However, each employee can only have one primary department at a time.
- If an employee belongs to only one department, their `primary_flag` will always be `'N'`.

---

## Task

Write a SQL query to report the employee's `employee_id` and their `primary department_id`. If an employee belongs to only one department, return that department. If an employee belongs to multiple departments, return the department where `primary_flag` is `'Y'`.

---

## Example

### Input:

**Employee table:**

| employee_id | department_id | primary_flag |
| ----------- | ------------- | ------------ |
| 1           | 1             | N            |
| 2           | 1             | Y            |
| 2           | 2             | N            |
| 3           | 3             | N            |
| 4           | 2             | N            |
| 4           | 3             | Y            |
| 4           | 4             | N            |

### Output:

| employee_id | department_id |
| ----------- | ------------- |
| 1           | 1             |
| 2           | 1             |
| 3           | 3             |
| 4           | 3             |

### Explanation:

- **Employee 1** belongs to only one department (`department_id = 1`), so this is considered their primary department.
- **Employee 2** belongs to two departments. The `primary_flag` for `department_id = 1` is `'Y'`, so this is their primary department.
- **Employee 3** belongs to only one department (`department_id = 3`), so this is considered their primary department.
- **Employee 4** belongs to three departments. The `primary_flag` for `department_id = 3` is `'Y'`, so this is their primary department.

---
