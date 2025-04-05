# 602. Friend Requests II: Who Has the Most Friends

## Problem Description

You are given a table `RequestAccepted` that contains information about friend requests that have been accepted. The table has the following columns:

| Column Name  | Type |
| ------------ | ---- |
| requester_id | int  |
| accepter_id  | int  |
| accept_date  | date |

- `(requester_id, accepter_id)` is the primary key, which means each combination of these columns is unique in the table.
- `requester_id` is the ID of the user who sent the request.
- `accepter_id` is the ID of the user who received the request.
- `accept_date` is the date when the request was accepted.

### Goal

You need to find the person who has the most friends. A person is considered to have a friend if they have sent or received a friend request, which was accepted. Your result should return the ID of the person with the most friends and the number of friends they have.

The test cases are generated such that only one person has the most friends.

### Example

#### Input

The table `RequestAccepted` is as follows:

| requester_id | accepter_id | accept_date |
| ------------ | ----------- | ----------- |
| 1            | 2           | 2016/06/03  |
| 1            | 3           | 2016/06/08  |
| 2            | 3           | 2016/06/08  |
| 3            | 4           | 2016/06/09  |

#### Output

| id  | num |
| --- | --- |
| 3   | 3   |

#### Explanation

- Person 3 is friends with people 1, 2, and 4, so they have three friends in total, which is the most number of friends compared to any other person.

### Constraints

- The table contains at most 10^5 rows.
- The test cases are generated so that only one person has the most friends.
