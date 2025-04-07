# 185. Department Top Three Salaries

## Problem Description

The company's executives are interested in seeing who earns the most money in each department. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

Write a solution to find the employees who are high earners in each of the company's departments.

Return the result table in any order.

### Tables

#### Employee

| Column Name  | Type    |
| ------------ | ------- |
| id           | int     |
| name         | varchar |
| salary       | int     |
| departmentId | int     |

- `id` is the primary key (column with unique values) for this table.
- `departmentId` is a foreign key (reference column) of the ID from the `Department` table.
- Each row in this table indicates the ID, name, salary, and department of an employee.

#### Department

| Column Name | Type    |
| ----------- | ------- |
| id          | int     |
| name        | varchar |

- `id` is the primary key (column with unique values) for this table.
- Each row in this table indicates the ID and name of a department.

### Goal

You need to find the top three unique salaries in each department. If there are fewer than three distinct salaries in a department, return all available top salaries.

### Example

#### Input:

**Employee Table:**

| id  | name  | salary | departmentId |
| --- | ----- | ------ | ------------ |
| 1   | Joe   | 85000  | 1            |
| 2   | Henry | 80000  | 2            |
| 3   | Sam   | 60000  | 2            |
| 4   | Max   | 90000  | 1            |
| 5   | Janet | 69000  | 1            |
| 6   | Randy | 85000  | 1            |
| 7   | Will  | 70000  | 1            |

**Department Table:**

| id  | name  |
| --- | ----- |
| 1   | IT    |
| 2   | Sales |

#### Output:

| Department | Employee | Salary |
| ---------- | -------- | ------ |
| IT         | Max      | 90000  |
| IT         | Joe      | 85000  |
| IT         | Randy    | 85000  |
| IT         | Will     | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |

#### Explanation:

- In the IT department:
  - Max earns the highest unique salary (90000).
  - Joe and Randy both earn the second-highest unique salary (85000).
  - Will earns the third-highest unique salary (70000).
- In the Sales department:
  - Henry earns the highest salary (80000).
  - Sam earns the second-highest salary (60000).
  - There is no third-highest salary as there are only two employees.
