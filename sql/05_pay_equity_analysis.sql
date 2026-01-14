/*
Employee Compensation & Pay Equity Analysis
Pay Equity Review

This script examines current salary levels by gender within the same
role and department. Results are indicative only due to limited sample size.
*/

WITH LatestSalary AS (
    SELECT
        s.EmployeeID,
        s.SalaryAmount,
        ROW_NUMBER() OVER (
            PARTITION BY s.EmployeeID
            ORDER BY s.SalaryDate DESC
        ) AS rn
    FROM Salaries s
)

SELECT
    e.JobTitle,
    d.DepartmentName,
    e.Gender,
    AVG(ls.SalaryAmount) AS AverageSalary,
    COUNT(*) AS EmployeeCount
FROM LatestSalary ls
JOIN Employees e
    ON ls.EmployeeID = e.EmployeeID
JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
WHERE ls.rn = 1
GROUP BY
    e.JobTitle,
    d.DepartmentName,
    e.Gender
ORDER BY
    d.DepartmentName,
    e.JobTitle,
    e.Gender;

