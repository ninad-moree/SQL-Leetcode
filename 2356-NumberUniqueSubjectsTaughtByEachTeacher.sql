/*
    Write a solution to calculate the number of unique subjects each teacher teaches in the university.
    Return the result table in any order.

    Example 1:
    Input: 
    Teacher table:
    +------------+------------+---------+
    | teacher_id | subject_id | dept_id |
    +------------+------------+---------+
    | 1          | 2          | 3       |
    | 1          | 2          | 4       |
    | 1          | 3          | 3       |
    | 2          | 1          | 1       |
    | 2          | 2          | 1       |
    | 2          | 3          | 1       |
    | 2          | 4          | 1       |
    +------------+------------+---------+
    Output:  
    +------------+-----+
    | teacher_id | cnt |
    +------------+-----+
    | 1          | 2   |
    | 2          | 4   |
    +------------+-----+
*/

SELECT teacher_id, COUNT(DISTINCT(subject_id)) AS cnt
FROM Teacher
GROUP BY teacher_id;