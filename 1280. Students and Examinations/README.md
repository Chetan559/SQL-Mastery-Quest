# 1280. Students and Examinations

## Problem Statement

We have three tables: `Students`, `Subjects`, and `Examinations`. Each student takes every course from the subjects, and each row in the `Examinations` table indicates that a student attended the exam for a subject. We need to find the number of times each student attended each exam and return the results ordered by `student_id` and `subject_name`.

### Table: Students

| Column Name  | Type    |
| ------------ | ------- |
| student_id   | int     |
| student_name | varchar |

- `student_id` is the primary key for this table.
- Each row contains the ID and the name of one student in the school.

### Table: Subjects

| Column Name  | Type    |
| ------------ | ------- |
| subject_name | varchar |

- `subject_name` is the primary key for this table.
- Each row contains the name of one subject in the school.

### Table: Examinations

| Column Name  | Type    |
| ------------ | ------- |
| student_id   | int     |
| subject_name | varchar |

- There is no primary key for this table. It may contain duplicates.
- Each row in this table indicates that a student with `student_id` attended the exam for the subject `subject_name`.

### Task

Write a SQL query to find the number of times each student attended each exam.

Return the result table ordered by `student_id` and `subject_name`.

---

## Example

### Input:

#### Students Table:

| student_id | student_name |
| ---------- | ------------ |
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

#### Subjects Table:

| subject_name |
| ------------ |
| Math         |
| Physics      |
| Programming  |

#### Examinations Table:

| student_id | subject_name |
| ---------- | ------------ |
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

### Output:

| student_id | student_name | subject_name | attended_exams |
| ---------- | ------------ | ------------ | -------------- |
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

### Explanation:

- The result table contains all students and all subjects.
- Alice attended the Math exam 3 times, the Physics exam 2 times, and the Programming exam 1 time.
- Bob attended the Math exam 1 time, the Programming exam 1 time, and did not attend the Physics exam.
- Alex did not attend any exams.
- John attended the Math exam 1 time, the Physics exam 1 time, and the Programming exam 1 time.

---
