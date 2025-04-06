# Problem: Group Sold Products By The Date

## Description

You are given a table named `Activities` with two columns: `sell_date` and `product`. Each row represents a product sold on a specific date. Your task is to find, for each date, the number of different products sold and their names. The product names should be sorted lexicographically, and the result should be ordered by `sell_date`.

## Schema

### Activities Table:

| Column Name | Type    |
| ----------- | ------- |
| sell_date   | date    |
| product     | varchar |

- There is no primary key in the table. The table may contain duplicates.
- Each row contains the product name and the date it was sold in a market.

## Task

Write a solution to find, for each date, the number of different products sold and their names.

The sold product names for each date should be sorted lexicographically. The result should be ordered by `sell_date`.

## Example

### Input:

| sell_date  | product    |
| ---------- | ---------- |
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |

### Output:

| sell_date  | num_sold | products                     |
| ---------- | -------- | ---------------------------- |
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

### Explanation:

For `2020-05-30`, the sold products are `Headphone`, `Basketball`, and `T-Shirt`. These are sorted lexicographically as `Basketball`, `Headphone`, `T-Shirt`. The result shows `num_sold` as 3, and the products are returned in a sorted list.

For `2020-06-01`, the sold products are `Pencil` and `Bible`. These are sorted as `Bible`, `Pencil`. The result shows `num_sold` as 2, and the products are returned in a sorted list.

For `2020-06-02`, only `Mask` was sold, so `num_sold` is 1, and the product is simply returned.
