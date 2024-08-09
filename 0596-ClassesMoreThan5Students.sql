/*
    Write a solution to find all the classes that have at least five students. Return the result table in any order.

    Example 1:
    Input: 
    Courses table:
    +---------+----------+
    | student | class    |
    +---------+----------+
    | A       | Math     |
    | B       | English  |
    | C       | Math     |
    | D       | Biology  |
    | E       | Math     |
    | F       | Computer |
    | G       | Math     |
    | H       | Math     |
    | I       | Math     |
    +---------+----------+
    Output: 
    +---------+
    | class   |
    +---------+
    | Math    |
    +---------+
*/

SELECT class 
FROM courses 
GROUP BY class 
HAVING count(class) >= 5