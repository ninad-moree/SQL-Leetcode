/*
    Write a solution to find managers with at least five direct reports. Return the result table in any order.

    Example 1:
    Input: 
    Employee table:
    +-----+-------+------------+-----------+
    | id  | name  | department | managerId |
    +-----+-------+------------+-----------+
    | 101 | John  | A          | null      |
    | 102 | Dan   | A          | 101       |
    | 103 | James | A          | 101       |
    | 104 | Amy   | A          | 101       |
    | 105 | Anne  | A          | 101       |
    | 106 | Ron   | B          | 101       |
    +-----+-------+------------+-----------+
    Output: 
    +------+
    | name |
    +------+
    | John |
    +------+
*/

SELECT E1.name
FROM Employee E1
INNER JOIN Employee E2
ON E1.id = E2.managerId
GROUP BY E2.managerId
HAVING COUNT(E2.managerId) >= 5