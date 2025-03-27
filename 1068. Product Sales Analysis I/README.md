# 1068. Product Sales Analysis I

## Problem Description

We are provided with two tables:

### Sales Table:

This table contains the following columns:
| Column Name | Type |
|-------------|-------|
| sale_id | int |
| product_id | int |
| year | int |
| quantity | int |
| price | int |

- **sale_id** and **year** together form the primary key (combination of columns with unique values).
- **product_id** is a foreign key that references the **Product** table.
- Each row represents a sale of a product in a given year.

### Product Table:

This table contains the following columns:
| Column Name | Type |
|--------------|---------|
| product_id | int |
| product_name | varchar |

- **product_id** is the primary key for this table.

## Task:

We need to write a query to return the `product_name`, `year`, and `price` for each sale from the **Sales** table. The result should display all sales with product details.

### Output Format:

Return the resulting table with the following columns:

| Column Name  | Type    |
| ------------ | ------- |
| product_name | varchar |
| year         | int     |
| price        | int     |

The result can be in any order.

### Example:

**Input:**

Sales table:
| sale_id | product_id | year | quantity | price |
|---------|------------|------|----------|-------|
| 1 | 100 | 2008 | 10 | 5000 |
| 2 | 100 | 2009 | 12 | 5000 |
| 7 | 200 | 2011 | 15 | 9000 |

Product table:
| product_id | product_name |
|------------|--------------|
| 100 | Nokia |
| 200 | Apple |
| 300 | Samsung |

**Output:**
| product_name | year | price |
|--------------|------|-------|
| Nokia | 2008 | 5000 |
| Nokia | 2009 | 5000 |
| Apple | 2011 | 9000 |

### Explanation:

- From sale_id = 1, we can conclude that **Nokia** was sold for **5000** in the year **2008**.
- From sale_id = 2, we can conclude that **Nokia** was sold for **5000** in the year **2009**.
- From sale_id = 7, we can conclude that **Apple** was sold for **9000** in the year **2011**.
