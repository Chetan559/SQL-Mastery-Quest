# 1661. Average Time of Process per Machine

## Problem Description

We are given a table called **Activity** that logs the activities of machines on a factory website.

### Activity Table:

| Column Name   | Type  |
| ------------- | ----- |
| machine_id    | int   |
| process_id    | int   |
| activity_type | enum  |
| timestamp     | float |

- **machine_id**: ID of the machine.
- **process_id**: ID of a process running on the machine with ID `machine_id`.
- **activity_type**: An `ENUM` type with values `('start', 'end')`. It indicates whether the process is starting or ending.
- **timestamp**: A `float` representing the time in seconds at which the activity occurred.

The combination of `(machine_id, process_id, activity_type)` is the primary key.

### Task:

We need to calculate the average time it takes each machine to complete a process. The time to complete a process is the difference between the `end` timestamp and the `start` timestamp for each `(machine_id, process_id)` pair. The average time should be calculated by dividing the total time for each machine by the number of processes that the machine ran.

The resulting table should have:

- **machine_id**: The ID of the machine.
- **processing_time**: The average processing time for the machine, rounded to 3 decimal places.

### Output Format:

Return the result table in any order.

| Column Name     | Type  |
| --------------- | ----- |
| machine_id      | int   |
| processing_time | float |

### Example:

**Input:**

Activity table:
| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0 | 0 | start | 0.712 |
| 0 | 0 | end | 1.520 |
| 0 | 1 | start | 3.140 |
| 0 | 1 | end | 4.120 |
| 1 | 0 | start | 0.550 |
| 1 | 0 | end | 1.550 |
| 1 | 1 | start | 0.430 |
| 1 | 1 | end | 1.420 |
| 2 | 0 | start | 4.100 |
| 2 | 0 | end | 4.512 |
| 2 | 1 | start | 2.500 |
| 2 | 1 | end | 5.000 |

**Output:**
| machine_id | processing_time |
|------------|-----------------|
| 0 | 0.894 |
| 1 | 0.995 |
| 2 | 1.456 |

### Explanation:

- **Machine 0**:
  - Process 0: `(1.520 - 0.712) = 0.808`
  - Process 1: `(4.120 - 3.140) = 0.980`
  - Average time: `(0.808 + 0.980) / 2 = 0.894`
- **Machine 1**:

  - Process 0: `(1.550 - 0.550) = 1.000`
  - Process 1: `(1.420 - 0.430) = 0.990`
  - Average time: `(1.000 + 0.990) / 2 = 0.995`

- **Machine 2**:
  - Process 0: `(4.512 - 4.100) = 0.412`
  - Process 1: `(5.000 - 2.500) = 2.500`
  - Average time: `(0.412 + 2.500) / 2 = 1.456`

### Requirements:

- Calculate the time difference for each `process_id` per `machine_id` pair.
- Return the average processing time per machine rounded to 3 decimal places.
