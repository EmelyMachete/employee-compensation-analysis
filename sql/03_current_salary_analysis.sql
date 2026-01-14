/*
Employee Compensation & Pay Equity Analysis
Current Salary Analysis

This script identifies the most recent salary record for each employee
to support compensation comparison across roles and departments.
*/

WITH LatestSalary AS (
    SELECT
        s.EmployeeID,
        s.SalaryAmount,
        s.SalaryDate,
        ROW_NUMBER() OVER (
            PARTITION BY s.EmployeeID
            ORDER BY s.SalaryDate DESC
        ) AS rn
    FROM Salaries s
)

SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.JobTitle,
    d.DepartmentName,
    ls.SalaryAmount AS CurrentSalary,
    ls.SalaryDate AS EffectiveDate
FROM LatestSalary ls
JOIN Employees e
    ON ls.EmployeeID = e.EmployeeID
JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
WHERE ls.rn = 1
ORDER BY CurrentSalary DESC;

