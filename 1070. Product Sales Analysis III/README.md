# 1070. Product Sales Analysis III

**Medium**

## Topics

- Companies

## SQL Schema

### Table: Sales

| Column Name | Type |
| ----------- | ---- |
| sale_id     | int  |
| product_id  | int  |
| year        | int  |
| quantity    | int  |
| price       | int  |

- `(sale_id, year)` is the primary key (combination of columns with unique values) of this table.
- `product_id` is a foreign key (reference column) to the `Product` table.
- Each row of this table shows a sale of the product `product_id` in a certain year.
- Note that the `price` is per unit.

### Table: Product

| Column Name  | Type    |
| ------------ | ------- |
| product_id   | int     |
| product_name | varchar |

- `product_id` is the primary key (column with unique values) of this table.
- Each row of this table indicates the product name of each product.

## Problem Statement

Write a solution to select the product id, year, quantity, and price for the first year of every product sold.

Return the resulting table in any order.

### Example

**Input:**

`Sales` table:
| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1 | 100 | 2008 | 10 | 5000 |
| 2 | 100 | 2009 | 12 | 5000 |
| 7 | 200 | 2011 | 15 | 9000 |

`Product` table:
| product_id | product_name |
|------------|--------------|
| 100 | Nokia |
| 200 | Apple |
| 300 | Samsung |

**Output:**

| product_id | first_year | quantity | price |
| ---------- | ---------- | -------- | ----- |
| 100        | 2008       | 10       | 5000  |
| 200        | 2011       | 15       | 9000  |

## Explanation

- For product_id `100` (Nokia), the first sale occurred in the year `2008`, with a quantity of `10` and a price of `5000`.
- For product_id `200` (Apple), the first sale occurred in the year `2011`, with a quantity of `15` and a price of `9000`.
- Product_id `300` (Samsung) was not included in the result because it was not sold in the given `Sales` table.
