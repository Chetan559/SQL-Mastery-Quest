# Movie Rating Solution

## Problem Description

We are given three tables: **Movies**, **Users**, and **MovieRating**. The goal is to find:

1. The name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.
2. The movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.

### SQL Schema

#### Movies table:

| Column Name | Type    |
| ----------- | ------- |
| movie_id    | int     |
| title       | varchar |

`movie_id` is the primary key for this table, and `title` is the name of the movie.

#### Users table:

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |

`user_id` is the primary key for this table, and `name` contains unique user names.

#### MovieRating table:

| Column Name | Type |
| ----------- | ---- |
| movie_id    | int  |
| user_id     | int  |
| rating      | int  |
| created_at  | date |

The composite primary key for this table is `(movie_id, user_id)`. It contains the rating given by a user to a movie, along with the date of review.

---
