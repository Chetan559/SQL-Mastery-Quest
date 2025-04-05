# 1978. Employees Whose Manager Left the Company

## Problem Description

We are given a table called `Employees` which contains information about employees, their salaries, and the ID of their manager. Some employees do not have a manager (i.e., `manager_id` is `null`). When a manager leaves the company, their information is deleted from the `Employees` table, but the employees still have their `manager_id` set to the ID of the manager who has left.

The task is to find the IDs of the employees whose salary is strictly less than $30000 and whose manager has left the company.

### Input Table: Employees

| Column Name | Type    |
| ----------- | ------- |
| employee_id | int     |
| name        | varchar |
| manager_id  | int     |
| salary      | int     |

- `employee_id` is the primary key of this table.
- Some employees do not have a manager (i.e., `manager_id` is `null`).

### Output:

Return the employee IDs whose salary is strictly less than $30000 and whose manager has left the company. The result should be ordered by `employee_id`.

### Example 1:

#### Input:

Employees table:

| employee_id | name      | manager_id | salary |
| ----------- | --------- | ---------- | ------ |
| 3           | Mila      | 9          | 60301  |
| 12          | Antonella | null       | 31000  |
| 13          | Emery     | null       | 67084  |
| 1           | Kalel     | 11         | 21241  |
| 9           | Mikaela   | null       | 50937  |
| 11          | Joziah    | 6          | 28485  |

#### Output:

| employee_id |
| ----------- |
| 11          |

#### Explanation:

- The employees with a salary less than $30000 are:
  - Employee 1 (Kalel) with salary 21241.
  - Employee 11 (Joziah) with salary 28485.
- Kalel's manager is employee 11, who is still in the company.
- Joziah's manager is employee 6, who has left the company (since there is no row for employee 6 in the `Employees` table).

Thus, employee 11 (Joziah) is the result.
