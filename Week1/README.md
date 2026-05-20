# Week 1 – Basic SQL and DML Commands

# Overview

This week focuses on learning the fundamentals of SQL and basic database operations.

The topics covered in this week help build a strong foundation for advanced SQL concepts.

---

# Topics Covered

- Introduction to SQL
- What is a Database
- What is a Table
- SQL Commands
- DML Commands
- SELECT Statement
- WHERE Clause
- ORDER BY
- GROUP BY
- HAVING Clause
- Joins
- Basic SQL Query Flow

---

# What is SQL

SQL means:

```text
Structured Query Language
```

SQL is used to:

- Store data
- Retrieve data
- Update data
- Delete data
- Manage databases

---

# What is a Database

A database is a collection of organized data.

It helps to:

- Store information
- Manage records
- Retrieve data quickly

Examples:

- Employee data
- Customer data
- Product data

---

# What is a Table

A table stores data in rows and columns.

Example:

| emp_id | emp_name | salary |
|---|---|---|
| 1 | John | 50000 |
| 2 | Sara | 60000 |

---

# Types of SQL Commands

SQL commands are mainly divided into:

| Command Type | Purpose |
|---|---|
| DDL | Defines database structure |
| DML | Manipulates data |
| DQL | Retrieves data |
| DCL | Controls permissions |
| TCL | Manages transactions |

---

# What are DML Commands

DML means:

```text
Data Manipulation Language
```

DML commands are used to manage data inside tables.

---

# Important DML Commands

| Command | Purpose |
|---|---|
| INSERT | Adds data |
| UPDATE | Modifies data |
| DELETE | Removes data |
| SELECT | Retrieves data |

---

# INSERT Command

INSERT is used to add new records into a table.

---

# UPDATE Command

UPDATE is used to modify existing data.

---

# DELETE Command

DELETE is used to remove records from a table.

---

# SELECT Statement

SELECT is used to retrieve data from tables.

It is one of the most commonly used SQL statements.

---

# WHERE Clause

WHERE is used to filter records based on conditions.

It helps retrieve only required rows.

---

# Why WHERE is Used

WHERE helps to:

- Filter data
- Search records
- Apply conditions
- Reduce unwanted output

---

# ORDER BY Clause

ORDER BY is used to sort data.

Sorting can be:

- Ascending
- Descending

---

# Why ORDER BY is Used

ORDER BY helps to:

- Arrange records
- Display organized output
- Sort salaries, dates, names, and more

---

# GROUP BY Clause

GROUP BY groups rows that have similar values.

It is commonly used with aggregate functions.

---

# Aggregate Functions

Aggregate functions perform calculations on multiple rows.

Examples:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

# Why GROUP BY is Used

GROUP BY helps to:

- Perform category-wise analysis
- Create department reports
- Analyze grouped data

---

# HAVING Clause

HAVING is used to filter grouped data.

It works after GROUP BY.

---

# Difference Between WHERE and HAVING

| WHERE | HAVING |
|---|---|
| Filters rows | Filters groups |
| Used before grouping | Used after grouping |
| Cannot use aggregate functions directly | Works with aggregate functions |

---

# What are Joins

Joins combine data from multiple tables.

They help retrieve related information stored in different tables.

---

# Why Joins are Used

Joins are used to:

- Connect related tables
- Retrieve combined data
- Perform relational analysis

---

# Types of Joins

| Join Type | Purpose |
|---|---|
| INNER JOIN | Matching rows from both tables |
| LEFT JOIN | All rows from left table |
| RIGHT JOIN | All rows from right table |
| FULL JOIN | All rows from both tables |

---

# INNER JOIN

Returns matching rows from both tables.

Used when related data exists in both tables.

---

# LEFT JOIN

Returns:

- All rows from left table
- Matching rows from right table

Non-matching rows contain NULL values.

---

# RIGHT JOIN

Returns:

- All rows from right table
- Matching rows from left table

---

# FULL JOIN

Returns all rows from both tables.

Matching and non-matching rows are included.

---

# SQL Query Execution Flow

```text
FROM
   ↓
WHERE
   ↓
GROUP BY
   ↓
HAVING
   ↓
SELECT
   ↓
ORDER BY
```

---

# Real-Time Uses of SQL

SQL is used in:

- Banking systems
- E-commerce applications
- Payroll systems
- Hospital management
- Reporting systems
- Data analytics

---

# Common Beginner Mistakes

| Mistake | Problem |
|---|---|
| Missing WHERE condition | Incorrect results |
| Wrong GROUP BY usage | Aggregation errors |
| Confusing WHERE and HAVING | Wrong filtering |
| Incorrect JOIN conditions | Duplicate or missing data |
| Missing ORDER BY | Unsorted output |

---

# Important Beginner Understanding

| Concept | Meaning |
|---|---|
| SQL | Database query language |
| Table | Stores rows and columns |
| DML | Data manipulation commands |
| WHERE | Filters rows |
| GROUP BY | Groups rows |
| HAVING | Filters grouped data |
| ORDER BY | Sorts data |
| JOIN | Combines tables |

---

# Best Learning Flow

```text
Database Basics
      ↓
SELECT Queries
      ↓
WHERE Clause
      ↓
ORDER BY
      ↓
GROUP BY
      ↓
HAVING
      ↓
JOINS
      ↓
Advanced SQL
```

---

# Summary

In Week 1, we learned:

- SQL basics
- Database concepts
- Tables
- DML commands
- SELECT statement
- WHERE clause
- ORDER BY
- GROUP BY
- HAVING clause
- Joins
- SQL query flow

These concepts form the foundation of SQL and database management.
