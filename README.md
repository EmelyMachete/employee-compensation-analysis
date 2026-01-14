# Employee Compensation & Pay Equity Analysis
## Project Overview

This project uses SQL to analyze employee compensation data with the goal of understanding current pay levels, salary growth over time, and potential pay equity concerns across departments and roles. The analysis is designed to reflect real-world HR and business decision-making scenarios.
## Problem Statement

Organizations often struggle to understand whether employee compensation is fair, competitive, and aligned with performance and role expectations. Without structured analysis, salary stagnation and pay inequities can go unnoticed, increasing the risk of low morale and employee turnover.
## Data Model

The analysis is based on a structured relational database consisting of the following tables:

- Employees: demographic and role-related information
- Departments: organizational structure
- Salaries: historical salary records per employee over time

The data is synthetic but intentionally designed to resemble real organizational salary patterns.
## Analysis Performed

The following analyses were conducted using SQL queries:

- Identified the most recent salary for each employee using window functions
- Analyzed salary progression over time to detect stagnation or limited growth
- Compared compensation levels across departments and roles
- Examined potential pay equity patterns by gender within the same role and department
## Key Insights

- Engineering roles consistently showed higher compensation compared to other departments, with senior positions earning a clear premium
- Slight salary differences were observed between job levels, reflecting structured progression rather than arbitrary increases
- One employee demonstrated salary stagnation over multiple years, indicating a potential retention or performance risk
## Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)
