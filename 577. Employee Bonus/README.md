# 577. Employee Bonus

## Difficulty: Easy

### Problem Description

You need to report the name and bonus amount of each employee who has a bonus less than 1000.

#### SQL Schema

**Employee Table**:

| Column Name | Type    |
| ----------- | ------- |
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |

- `empId` is the column with unique values for this table.
- Each row of this table indicates the name, the ID of an employee, their salary, and the ID of their manager.

**Bonus Table**:

| Column Name | Type |
| ----------- | ---- |
| empId       | int  |
| bonus       | int  |

- `empId` is the column of unique values for this table.
- `empId` is a foreign key (reference column) to `empId` from the Employee table.
- Each row of this table contains the ID of an employee and their respective bonus.

### Problem Requirements

Write a SQL solution to report the name and bonus amount of each employee with a bonus less than 1000.

#### Input:

**Employee Table**:

| empId | name   | supervisor | salary |
| ----- | ------ | ---------- | ------ |
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

**Bonus Table**:

| empId | bonus |
| ----- | ----- |
| 2     | 500   |
| 4     | 2000  |

#### Output:

| name | bonus |
| ---- | ----- |
| Brad | null  |
| John | null  |
| Dan  | 500   |

### Explanation

- **Brad** has no entry in the Bonus table, so his bonus is `NULL`.
- **John** has no bonus recorded, so his bonus is also `NULL`.
- **Dan** has a bonus of 500, which is less than 1000.
- **Thomas** has a bonus of 2000, which is greater than 1000, so he is excluded.
