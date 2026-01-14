/*
Employee Compensation & Pay Equity Analysis
Database Schema Creation

This script creates the database and core tables used for the analysis.
*/

CREATE DATABASE EmployeeCompensation;
GO

USE EmployeeCompensation;
GO

-- Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    JobTitle VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    CONSTRAINT FK_Employees_Departments
        FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Salaries table
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    SalaryAmount DECIMAL(10,2) NOT NULL,
    SalaryDate DATE NOT NULL,
    CONSTRAINT FK_Salaries_Employees
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

