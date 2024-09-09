/*
    Find all numbers that appear at least three times consecutively. Return the result table in any order. The result format is in the following 
    example.

    Example 1:
    Input: 
    Logs table:
    +----+-----+
    | id | num |
    +----+-----+
    | 1  | 1   |
    | 2  | 1   |
    | 3  | 1   |
    | 4  | 2   |
    | 5  | 1   |
    | 6  | 2   |
    | 7  | 2   |
    +----+-----+
    Output: 
    +-----------------+
    | ConsecutiveNums |
    +-----------------+
    | 1               |
    +-----------------+
*/

SELECT DISTINCT(l1.num) AS ConsecutiveNums
FROM Logs l1
WHERE l1.num IN (
    SELECT DISTINCT(l2.num)
    FROM Logs l2
    WHERE l2.id = l1.id + 1 AND l1.num = l2.num AND l2.num IN (
        SELECT DISTINCT(l3.num)
        FROM Logs l3
        WHERE l3.id = l2.id + 1 AND l3.num = l2.num
    )
)
