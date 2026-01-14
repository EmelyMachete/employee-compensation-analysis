/*
Employee Compensation & Pay Equity Analysis
Sample Data Insertion

The data in this script is synthetic and created to reflect realistic
organizational structures, roles, and salary progression patterns.
*/

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Engineering'),
(2, 'Operations'),
(3, 'Human Resources'),
(4, 'Finance');


INSERT INTO Employees (
    EmployeeID, FirstName, LastName, Gender, JobTitle, DepartmentID
) VALUES
(101, 'Lerato', 'Khumalo', 'Female', 'Operations Analyst', 2),
(102, 'Sipho', 'Dlamini', 'Male', 'Software Engineer', 1),
(103, 'Naledi', 'Mokoena', 'Female', 'Senior Software Engineer', 1),
(104, 'Thabo', 'Nkosi', 'Male', 'HR Officer', 3),
(105, 'Ayanda', 'Pillay', 'Female', 'Financial Analyst', 4);

INSERT INTO Salaries (
    SalaryID, EmployeeID, SalaryAmount, SalaryDate
) VALUES
-- Lerato Khumalo (Operations) - stagnation pattern
(1, 101, 28000, '2021-01-01'),
(2, 101, 28000, '2022-01-01'),
(3, 101, 28000, '2023-01-01'),

-- Sipho Dlamini (Engineer)
(4, 102, 45000, '2021-01-01'),
(5, 102, 48000, '2022-01-01'),
(6, 102, 52000, '2023-01-01'),

-- Naledi Mokoena (Senior Engineer)
(7, 103, 60000, '2021-01-01'),
(8, 103, 65000, '2022-01-01'),
(9, 103, 70000, '2023-01-01'),

-- Thabo Nkosi (HR)
(10, 104, 30000, '2021-01-01'),
(11, 104, 32000, '2022-01-01'),
(12, 104, 34000, '2023-01-01'),

-- Ayanda Pillay (Finance)
(13, 105, 40000, '2021-01-01'),
(14, 105, 43000, '2022-01-01'),
(15, 105, 46000, '2023-01-01');


