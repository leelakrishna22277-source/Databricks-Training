# Week 2 SQL Learning – Functions, Joins, and Regex

## Overview

In Week 2, I practiced advanced SQL concepts using different tables and real-time examples.

I learned how to work with:

- Date Functions
- String Functions
- Time Functions
- NULL Functions
- Aggregate Functions
- Conditional Statements
- Joins
- Regular Expressions (Regex)

These topics helped me improve query writing, data analysis, formatting, filtering, and report generation skills.

---

# Topics Learned

## 1. String Functions

### Functions Practiced
- upper()
- lower()
- initcap()
- substring_index()
- concat()
- length()
- trim()

### What I Learned
- Convert text into uppercase and lowercase
- Extract email domains
- Format names properly
- Clean unwanted spaces from data
- Combine multiple columns into one

---

## 2. Date Functions

### Functions Practiced
- current_date
- datediff()
- timestampdiff()
- extract()
- monthname()
- dayname()

### What I Learned
- Calculate experience of employees
- Find delivery delays
- Calculate remaining subscription days
- Extract year and month from dates
- Work with real-time date calculations

---

## 3. Time and Numeric Functions

### Functions Practiced
- round()
- truncate()
- abs()
- power()
- sign()

### What I Learned
- Round decimal values
- Remove decimal precision
- Find absolute values
- Calculate monthly interest
- Identify positive and negative balances

---

## 4. NULL Functions

### Functions Practiced
- coalesce()
- ifnull()
- nullif()

### What I Learned
- Handle missing values safely
- Replace NULL values with default values
- Avoid calculation errors caused by NULL

---

## 5. CASE Statement

### What I Learned
Used CASE statements to categorize data based on conditions:

- Senior / Mid / Junior employees
- High Risk / Medium Risk loans
- Active / Expired subscriptions
- Excellent / Poor attendance
- Dormant / Active bank accounts

---

## 6. Joins

### Types of Joins Learned
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- CROSS JOIN
- SELF JOIN

### What I Learned
- Combine data from multiple tables
- Retrieve related information
- Match records using keys
- Generate reports using multiple tables

---

## 7. Aggregate Functions

### Functions Practiced
- count()
- sum()
- avg()
- min()
- max()

### What I Learned
- Calculate totals
- Find averages
- Analyze department-wise data
- Generate summary reports

---

## 8. Group By and Having

### What I Learned
- Group records based on categories
- Filter grouped results using HAVING

---

## 9. Regular Expressions (Regex)

### Functions Practiced
- regexp
- regexp_like()

### What I Learned
- Validate email patterns
- Search text using patterns
- Filter records with specific formats

---

# Real-Time Tables Practiced

- employee_payments
- orders_delivery
- customer_spending
- subscriptions
- loan_details
- attendance
- product_sales
- insurance_policies
- salary_revision
- bank_accounts

---

# Skills Improved

## Query Writing
- Writing complex SELECT queries
- Using multiple functions together
- Formatting outputs

## Data Analysis
- Employee performance analysis
- Loan risk categorization
- Delivery delay analysis
- Customer spending analysis

## Problem Solving
- Handling NULL values
- Date calculations
- Conditional logic
- Percentage calculations

---

# Common Mistakes I Faced

- Using wrong date functions
- Forgetting NULL handling
- Missing aliases
- Incorrect CASE conditions
- Syntax errors in joins
- Using aggregate functions without GROUP BY

---

# Important SQL Concepts Understood

## coalesce() vs ifnull()
- COALESCE() can check multiple values
- IFNULL() checks only two values

## WHERE vs HAVING
- WHERE filters rows before grouping
- HAVING filters grouped data

## Joins vs Set Operators
- Joins combine columns
- Set operators combine rows

## ROUND() vs TRUNCATE()
- ROUND() rounds values
- TRUNCATE() cuts decimal places

---

# Mini Project Style Practice Done

## Employee Compensation Analysis
- Salary calculations
- Experience classification
- Bonus handling

## Order Delivery Analysis
- Delivery delay calculation
- Pending order detection

## Customer Spending Analysis
- Spending category identification

## Subscription Validity Analysis
- Expiry calculation
- Remaining days tracking

## Loan Risk Analysis
- Monthly interest calculation
- Risk categorization

## Attendance Performance Analysis
- Attendance percentage
- Employee grading

## Product Discount Validation
- Discount percentage calculation
- Pricing validation

## Insurance Policy Analysis
- Policy duration analysis
- Expiry tracking

## Salary Revision Simulation
- Increment calculations
- Salary hike logic

## Bank Account Status Analysis
- Dormant account detection
- Overdrawn balance handling

---

# What I Learned Overall

By practicing these assignments, I improved my understanding of:

- SQL query writing
- Data formatting
- Real-world business logic
- Analytical thinking
- Conditional reporting
- Function usage
- Multi-table operations
- Data validation using regex

I also learned how SQL is used in real-time applications like:

- Banking systems
- HR management
- Insurance systems
- E-commerce
- Customer analytics
- Finance applications
