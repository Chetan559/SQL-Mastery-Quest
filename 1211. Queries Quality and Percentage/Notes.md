### Explanation of `COUNT(CASE WHEN rating < 3 THEN 1 END)`:

- **`COUNT(CASE WHEN rating < 3 THEN 1 END)`**: This counts how many ratings are less than 3.
  - The `CASE` statement checks if the `rating` is less than 3:
    ```sql
    CASE WHEN rating < 3 THEN 1 END
    ```
  - If the condition (`rating < 3`) is **true**, it returns `1`.
  - If the condition is **false**, it returns `NULL`.
- **Why `COUNT` works**:
  - The `COUNT` function in SQL counts **non-NULL** values.
  - As a result, the `COUNT` will only consider the rows where the `rating` is less than 3 because the `CASE` statement will return `1` for these rows (which is a non-NULL value).
  - Rows where the `rating` is **greater than or equal to 3** will return `NULL` and thus won't be counted by `COUNT`.
