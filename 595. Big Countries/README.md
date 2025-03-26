# SQL Problem: 595. Big Countries

## Problem Statement

### Table: World

| Column Name | Type    |
| ----------- | ------- |
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |

- `name` is the primary key (column with unique values) for this table.
- Each row in this table provides information about a country, including the name, continent, area, population, and GDP value.

### Problem

A country is considered "big" if:

1. It has an area of at least three million (i.e., 3,000,000 km²), or
2. It has a population of at least twenty-five million (i.e., 25,000,000).

Write a SQL query to find the name, population, and area of the big countries.

Return the result table in any order.

### Example

#### Input

| name        | continent | area    | population | gdp          |
| ----------- | --------- | ------- | ---------- | ------------ |
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |

#### Output

| name        | population | area    |
| ----------- | ---------- | ------- |
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |

### Notes

- The result table can be returned in any order.
