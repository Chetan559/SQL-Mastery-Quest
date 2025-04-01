# 2356. Number of Unique Subjects Taught by Each Teacher

## Problem Description

The task is to calculate the number of unique subjects each teacher teaches in the university. You are given a table `Teacher` which contains the information about the teachers, the subjects they teach, and the departments they belong to. Your job is to return the number of unique subjects each teacher teaches.

### Table Schema

The `Teacher` table has the following columns:

| Column Name | Type |
| ----------- | ---- |
| teacher_id  | int  |
| subject_id  | int  |
| dept_id     | int  |

The primary key is a combination of `subject_id` and `dept_id`, meaning each row represents a teacher teaching a particular subject in a specific department.

### Input

Example Input:

| teacher_id | subject_id | dept_id |
| ---------- | ---------- | ------- |
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

### Output

You need to output a table with the number of unique subjects taught by each teacher.

Example Output:

| teacher_id | cnt |
| ---------- | --- |
| 1          | 2   |
| 2          | 4   |

### Explanation

- Teacher 1:

  - They teach subject 2 in departments 3 and 4.
  - They teach subject 3 in department 3.

  So, Teacher 1 teaches 2 unique subjects.

- Teacher 2:

  - They teach subject 1 in department 1.
  - They teach subject 2 in department 1.
  - They teach subject 3 in department 1.
  - They teach subject 4 in department 1.

  So, Teacher 2 teaches 4 unique subjects.
