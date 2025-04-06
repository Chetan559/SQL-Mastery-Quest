# Problem: Find Users With Valid E-Mails

## Description

You are given a table named `Users` with three columns: `user_id`, `name`, and `mail`. Each row represents a user, and the `mail` column contains the email address of the user. Some of these email addresses are invalid.

Your task is to find the users who have valid emails.

### A valid email:

- The prefix name must start with a letter.
- The prefix name may contain:
  - Letters (upper or lower case)
  - Digits
  - Underscore `_`
  - Period `.`
  - Dash `-`
- The domain must be `@leetcode.com`.

Return the result table with the valid users in any order.

## Schema

### Users Table:

| Column Name | Type    |
| ----------- | ------- |
| user_id     | int     |
| name        | varchar |
| mail        | varchar |

- `user_id` is the primary key (unique column).
- This table contains information about the users who signed up on the website.

## Example

### Input:

| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |

### Output:

| user_id | name      | mail                    |
| ------- | --------- | ----------------------- |
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |

### Explanation:

- The email of user 2 (`jonathanisgreat`) does not have a domain.
- The email of user 5 (`quarz#2020@leetcode.com`) contains an invalid character `#`.
- The email of user 6 (`david69@gmail.com`) does not belong to `@leetcode.com` domain.
- The email of user 7 (`.shapo@leetcode.com`) starts with a period, which is invalid.
