/*
    Write a solution to find the nth highest salary from the Employee table. If there is no nth highest salary, return null.
    The result format is in the following example.

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
    n = 2

    Output: 
    +------------------------+
    | getNthHighestSalary(2) |
    +------------------------+
    | 200                    |
    +------------------------+
*/

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N-1;
    RETURN (
        select distinct(salary)
        from Employee 
        order by salary DESC       
        limit 1 offset N
    );
END