# 1075. Project Employees I

## Description

You are given two tables, `Project` and `Employee`, as described below:

### Table: Project

| Column Name | Type |
| ----------- | ---- |
| project_id  | int  |
| employee_id | int  |

**Primary Key**: (project_id, employee_id)

The table indicates which employee is working on which project. Each row shows an employee working on a specific project.

### Table: Employee

| Column Name      | Type    |
| ---------------- | ------- |
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |

**Primary Key**: employee_id

This table contains the details of each employee, including their years of experience (`experience_years`).

### Goal

Write a query that calculates the average years of experience for all employees working on each project. The result should be rounded to 2 decimal places.

### Example

#### Input:

`Project` table:

| project_id | employee_id |
| ---------- | ----------- |
| 1          | 1           |
| 1          | 2           |
| 1          | 3           |
| 2          | 1           |
| 2          | 4           |

`Employee` table:

| employee_id | name   | experience_years |
| ----------- | ------ | ---------------- |
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |

#### Output:

| project_id | average_years |
| ---------- | ------------- |
| 1          | 2.00          |
| 2          | 2.50          |

#### Explanation:

For project 1:

- Employee 1: 3 years of experience
- Employee 2: 2 years of experience
- Employee 3: 1 year of experience
- Average experience = (3 + 2 + 1) / 3 = 2.00

For project 2:

- Employee 1: 3 years of experience
- Employee 4: 2 years of experience
- Average experience = (3 + 2) / 2 = 2.50
