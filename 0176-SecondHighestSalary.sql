/*
    Write a solution to find the second highest salary from the Employee table. If there is no second highest salary, return null 
    (return None in Pandas). The result format is in the following example.

    Example 1:
    Input: 
    Employee table:
    +----+--------+
    | id | salary |
    +----+--------+
    | 1  | 100    |
    | 2  | 200    |
    | 3  | 300    |
    +----+--------+

    Output: 
    +---------------------+
    | SecondHighestSalary |
    +---------------------+
    | 200                 |
    +---------------------+
*/

SELECT max(salary) AS SecondHighestSalary
FROM Employee
where salary < (SELECT max(salary) FROM Employee)