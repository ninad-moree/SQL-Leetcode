/*
    Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.
    Return the result table ordered by user_id. The result format is in the following example.

    Example 1:
    Input: 
    Users table:
    +---------+-------+
    | user_id | name  |
    +---------+-------+
    | 1       | aLice |
    | 2       | bOB   |
    +---------+-------+
    Output: 
    +---------+-------+
    | user_id | name  |
    +---------+-------+
    | 1       | Alice |
    | 2       | Bob   |
    +---------+-------+
*/

SELECT user_id, CONCAT(UPPER(SUBSTR(name, 1, 1)), LOWER(SUBSTR(name, 2, LENGTH(name)))) AS name
FROM Users
ORDER BY user_id ASC