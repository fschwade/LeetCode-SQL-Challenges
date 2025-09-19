# Write your MySQL query statement below
SELECT IF(eu.unique_id IS NULL,NULL,eu.unique_id) AS unique_id,
        e.name
FROM Employees e LEFT JOIN EmployeeUNI eu ON e.id = eu.id
