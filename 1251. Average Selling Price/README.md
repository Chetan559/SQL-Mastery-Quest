# 1251. Average Selling Price

## Description

You are given two tables, `Prices` and `UnitsSold`, as described below:

### Table: Prices

| Column Name | Type |
| ----------- | ---- |
| product_id  | int  |
| start_date  | date |
| end_date    | date |
| price       | int  |

**Primary Key**: (product_id, start_date, end_date)

Each row of this table indicates the price of the product during a specific period (from `start_date` to `end_date`) for a given `product_id`. For each product, there are no overlapping periods, meaning that two rows with the same `product_id` will not have intersecting periods.

### Table: UnitsSold

| Column Name   | Type |
| ------------- | ---- |
| product_id    | int  |
| purchase_date | date |
| units         | int  |

This table contains the sales data of each product. Each row represents the number of units sold (`units`) of a specific `product_id` on a particular `purchase_date`.

### Goal

You are asked to calculate the **average selling price** for each product. The **average selling price** should be calculated as:

\[
\text{average_price} = \frac{\text{Total Price of Product}}{\text{Number of Units Sold}}
\]

If a product does not have any sales data, its average price should be assumed to be 0.

You should round the average selling price to 2 decimal places.

### Example

#### Input:

`Prices` table:

| product_id | start_date | end_date   | price |
| ---------- | ---------- | ---------- | ----- |
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

`UnitsSold` table:

| product_id | purchase_date | units |
| ---------- | ------------- | ----- |
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

#### Output:

| product_id | average_price |
| ---------- | ------------- |
| 1          | 6.96          |
| 2          | 16.96         |

#### Explanation:

For product 1:

- From `2019-02-17` to `2019-02-28`, the price is 5, and 100 units were sold. This contributes to \(100 \times 5 = 500\).
- From `2019-03-01` to `2019-03-22`, the price is 20, and 15 units were sold. This contributes to \(15 \times 20 = 300\).
- Total revenue = 500 + 300 = 800.
- Total units sold = 100 + 15 = 115.
- Average selling price = \( \frac{800}{115} = 6.96 \).

For product 2:

- From `2019-02-01` to `2019-02-20`, the price is 15, and 200 units were sold. This contributes to \(200 \times 15 = 3000\).
- From `2019-02-21` to `2019-03-31`, the price is 30, and 30 units were sold. This contributes to \(30 \times 30 = 900\).
- Total revenue = 3000 + 900 = 3900.
- Total units sold = 200 + 30 = 230.
- Average selling price = \( \frac{3900}{230} = 16.96 \).
