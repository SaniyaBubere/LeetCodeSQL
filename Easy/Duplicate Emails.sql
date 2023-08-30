/*Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 

Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.*/

-- Return the result table in any order.

-- Solution

-- Selecting email addresses that appear more than once in the 'person' table
SELECT email
FROM person 
-- Grouping the rows by email address
GROUP BY email
-- Filtering the result to include only those email addresses with a count greater than 1
HAVING COUNT(*) > 1;
