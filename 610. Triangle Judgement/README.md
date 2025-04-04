# Triangle Judgement

## Problem Description

In this problem, we are given a table called `Triangle` which contains the lengths of three line segments, denoted as `x`, `y`, and `z`. The task is to determine whether the given three segments can form a valid triangle.

A valid triangle satisfies the following triangle inequality conditions:

- The sum of any two sides must be greater than the third side.

Formally, the following conditions must be true for segments `x`, `y`, and `z`:

1. \( x + y > z \)
2. \( x + z > y \)
3. \( y + z > x \)

If all the above conditions are met, the three segments can form a triangle; otherwise, they cannot.

## SQL Schema

### Table: Triangle

| Column Name | Type |
| ----------- | ---- |
| x           | int  |
| y           | int  |
| z           | int  |

In the table, `(x, y, z)` is the primary key, and each row represents the lengths of three line segments.

## Task

For each row in the table, report whether the three line segments can form a triangle. Return the results in the following format:

| x   | y   | z   | triangle |
| --- | --- | --- | -------- |
| x   | y   | z   | Yes/No   |

Where:

- `Yes` indicates that the segments can form a triangle.
- `No` indicates that the segments cannot form a triangle.

## Example

### Input:

`Triangle` table:

| x   | y   | z   |
| --- | --- | --- |
| 13  | 15  | 30  |
| 10  | 20  | 15  |

### Output:

| x   | y   | z   | triangle |
| --- | --- | --- | -------- |
| 13  | 15  | 30  | No       |
| 10  | 20  | 15  | Yes      |
