# 1683. Invalid Tweets

## Problem

You are given a table `Tweets` that contains all the tweets in a social media app. A tweet is considered invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Write a SQL query to find the `tweet_id` of the invalid tweets.

### Table: Tweets

| Column Name | Type    |
| ----------- | ------- |
| tweet_id    | int     |
| content     | varchar |

- `tweet_id` is the primary key (column with unique values) for this table.
- `content` consists of alphanumeric characters, `'!'`, or `' '` and no other special characters.

### Query

Write a SQL query to find the IDs of the invalid tweets where the length of the `content` is strictly greater than 15 characters.

### Example

#### Input

Tweets table:

| tweet_id | content                           |
| -------- | --------------------------------- |
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

#### Output

| tweet_id |
| -------- |
| 2        |

### Explanation

In this example:

- Tweet with `tweet_id = 1` has a length of 11, which is a valid tweet.
- Tweet with `tweet_id = 2` has a length of 33, which is an invalid tweet.

Thus, the query returns `tweet_id = 2`.
