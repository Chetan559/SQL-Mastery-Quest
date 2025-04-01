# User Activity for the Past 30 Days

## Problem Statement

We are tasked with finding the **daily active user count** for a period of 30 days ending on **2019-07-27**, inclusively. A user is considered active on a particular day if they made at least one activity on that day. The activity is recorded in the `Activity` table.

### Table Schema

The table `Activity` contains the following columns:

| Column Name   | Type |
| ------------- | ---- |
| user_id       | int  |
| session_id    | int  |
| activity_date | date |
| activity_type | enum |

- The `activity_type` column is of type ENUM with the following possible values: 'open_session', 'end_session', 'scroll_down', 'send_message'.
- The `activity_date` represents the date when the activity occurred.
- A session belongs to exactly one user.

### Objective

Write a SQL query that returns the **daily active user count** for the 30 days ending **2019-07-27**, inclusively. The result should show the number of unique users active on each day.

### Input Example

Given the following `Activity` table:

| user_id | session_id | activity_date | activity_type |
| ------- | ---------- | ------------- | ------------- |
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |

### Expected Output

The output should be a table showing the number of unique active users on each day within the 30-day period ending on **2019-07-27**. It should exclude days with zero active users.

| day        | active_users |
| ---------- | ------------ |
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |

### Explanation

- On **2019-07-20**, users 1 and 2 were active.
- On **2019-07-21**, users 2 and 3 were active.
