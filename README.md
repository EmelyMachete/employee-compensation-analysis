# Employee Compensation & Pay Equity Analysis (SQL Project)

## Project Overview

This project analyzes employee compensation data using SQL to uncover salary distribution patterns, identify potential pay equity gaps, and evaluate compensation fairness across departments and job roles.

The goal of the analysis is to simulate a real-world HR analytics scenario where leadership needs clear, data-driven insights to support fair pay practices, employee retention, and informed compensation planning.

---

## Business Problem

Organizations often lack visibility into how salaries are distributed across roles, departments, and demographic groups. Without structured analysis, pay inequities, salary stagnation, and inconsistent compensation practices can persist unnoticed, leading to:

- Reduced employee morale  
- Increased turnover risk  
- Legal and compliance concerns  
- Ineffective compensation planning  

This project addresses these challenges by applying SQL-based analytics to explore compensation fairness, progression, and structural alignment.

---

## Dataset & Structure

The analysis is based on a structured relational dataset designed to reflect realistic organizational payroll systems. The database contains:

- **Employees** – demographic data, job roles, and department assignments  
- **Departments** – organizational structure and hierarchy  
- **Salaries** – historical salary records per employee  

Although the data is synthetic, it is intentionally modeled to replicate realistic business salary distributions and HR reporting scenarios.

---

## Analytical Approach

The analysis was conducted entirely using SQL, following a structured business-analytics workflow:

### 1. Data Preparation & Validation
- Verified table relationships and primary keys
- Ensured accurate employee-to-salary and department mappings
- Cleaned and validated salary records for consistency

### 2. Salary Distribution Analysis
- Calculated average, minimum, and maximum salaries per department
- Compared compensation levels across business units and roles
- Identified high-cost and low-cost departments

### 3. Salary Progression & Growth
- Tracked salary changes over time using window functions
- Identified employees experiencing salary stagnation
- Evaluated progression patterns across job levels

### 4. Pay Equity Assessment
- Analyzed compensation by gender within the same role and department
- Compared salary distributions to identify potential pay gaps
- Highlighted areas requiring further HR review

---

## Key Insights

- Engineering and technical roles consistently received higher compensation, reflecting market-driven demand for technical expertise.
- Salary progression followed structured patterns across most roles, indicating a standardized compensation framework.
- One employee displayed extended salary stagnation, suggesting potential retention and engagement risk.
- Minor gender-based pay differences were observed within selected roles, highlighting areas for deeper HR evaluation.

---

## Business Value

This analysis demonstrates how SQL-driven insights can support:

- Fair compensation policy reviews  
- HR risk identification and mitigation  
- Salary benchmarking  
- Data-driven decision-making in workforce planning  

---

## Tools & Technologies

- SQL Server  
- SQL Server Management Studio (SSMS)  
- Advanced SQL (Joins, CTEs, Window Functions, Aggregations)

---

## Repository Structure

sql_queries/

       data_validation.sql

       salary_distribution.sql

       salary_growth.sql

       pay_equity_analysis.sql

dataset/

      employee_compensation_data.sql

README.md


---

## Project Status

**Completed – Portfolio Project**

This project forms part of my professional data analytics portfolio, focused on applying SQL to solve real-world business problems.

