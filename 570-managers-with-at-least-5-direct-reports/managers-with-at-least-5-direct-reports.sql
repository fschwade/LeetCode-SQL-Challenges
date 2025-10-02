# Write your MySQL query statement below
SELECT e.name
FROM Employee AS e INNER JOIN employee m ON e.id = m.managerId
GROUP BY m.managerId
HAVING COUNT(m.managerID) >= 5