/*
    Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the 
    reports rounded to the nearest integer. Return the result table ordered by employee_id.

    Example 1:
    Input: 
    Employees table:
    +-------------+---------+------------+-----+
    | employee_id | name    | reports_to | age |
    +-------------+---------+------------+-----+
    | 9           | Hercy   | null       | 43  |
    | 6           | Alice   | 9          | 41  |
    | 4           | Bob     | 9          | 36  |
    | 2           | Winston | null       | 37  |
    +-------------+---------+------------+-----+
    Output: 
    +-------------+-------+---------------+-------------+
    | employee_id | name  | reports_count | average_age |
    +-------------+-------+---------------+-------------+
    | 9           | Hercy | 2             | 39          |
    +-------------+-------+---------------+-------------+
    Explanation: Hercy has 2 people report directly to him, Alice and Bob. Their average age is (41+36)/2 = 38.5, which is 39 after rounding it to the 
    nearest integer.
*/

SELECT 
    e1.employee_id, 
    e1.name, 
    COUNT(DISTINCT(e2.employee_id)) AS reports_count, 
    ROUND(AVG(e2.age), 0) AS average_age
FROM Employees e1
JOIN Employees e2
ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id