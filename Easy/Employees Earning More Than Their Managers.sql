/* Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 

Write a solution to find the employees who earn more than their managers.

Return the result table in any order.*/

-- Solution

-- Selecting the name of employees whose salary is greater than their manager's salary
SELECT name AS Employee
FROM employee e1
WHERE salary > (
    -- Subquery: Getting the salary of the manager for the current employee
    SELECT salary
    FROM employee
    WHERE id = e1.managerID
);

-- or 

select name as Employee from employee e1 where salary >(select salary from employee where id=e1.managerID)
