/*
Employee Compensation & Pay Equity Analysis
Salary Growth and Stagnation Detection

This script analyzes salary changes over time to identify growth patterns
and potential stagnation risks.
*/

WITH SalaryProgression AS (
    SELECT
        s.EmployeeID,
        s.SalaryDate,
        s.SalaryAmount,
        LAG(s.SalaryAmount) OVER (
            PARTITION BY s.EmployeeID
            ORDER BY s.SalaryDate
        ) AS PreviousSalary
    FROM Salaries s
)

SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.JobTitle,
    sp.SalaryDate,
    sp.SalaryAmount,
    sp.PreviousSalary,
    (sp.SalaryAmount - sp.PreviousSalary) AS SalaryChange
FROM SalaryProgression sp
JOIN Employees e
    ON sp.EmployeeID = e.EmployeeID
ORDER BY e.EmployeeID, sp.SalaryDate;

WITH SalaryChanges AS (
    SELECT
        s.EmployeeID,
        s.SalaryDate,
        s.SalaryAmount,
        LAG(s.SalaryAmount) OVER (
            PARTITION BY s.EmployeeID
            ORDER BY s.SalaryDate
        ) AS PreviousSalary
    FROM Salaries s
)

SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.JobTitle,
    COUNT(*) AS YearsWithoutIncrease
FROM SalaryChanges sc
JOIN Employees e
    ON sc.EmployeeID = e.EmployeeID
WHERE sc.SalaryAmount = sc.PreviousSalary
GROUP BY
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.JobTitle
HAVING COUNT(*) >= 2;

