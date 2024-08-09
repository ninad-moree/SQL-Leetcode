/*
    Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.
    Return the result table in any order.

    Example 1:
    Input: 
    Person table:
    +----+---------+
    | id | email   |
    +----+---------+
    | 1  | a@b.com |
    | 2  | c@d.com |
    | 3  | a@b.com |
    +----+---------+
    Output: 
    +---------+
    | Email   |
    +---------+
    | a@b.com |
    +---------+
    Explanation: a@b.com is repeated two times.
*/

SELECT email AS Email
FROM Person
GROUP BY email
HAVING count(email) > 1