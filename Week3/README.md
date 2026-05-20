# Week 3 – SQL Window Functions and CTE

# Overview

This week focuses on learning SQL Window Functions and Common Table Expressions (CTE).

These concepts are very important in real-time SQL development, reporting, analytics, and data engineering.

---

# Topics Covered

- Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- ORDER BY in Window Functions
- Aggregate Window Functions
- Running Totals
- Common Table Expressions (CTE)
- Recursive CTE Basics
- Real-time SQL Analysis

---

# What are Window Functions

Window functions perform calculations across a set of rows related to the current row.

Unlike GROUP BY, window functions do not combine rows into a single result.

They allow row-wise analysis while still keeping all rows visible.

---

# Why Window Functions are Used

Window functions are used for:

- Ranking employees
- Salary analysis
- Running totals
- Department-wise calculations
- Sales analysis
- Report generation
- Data analytics

---

# Important Parts of Window Functions

## OVER()

Defines the window area where calculations are performed.

---

## PARTITION BY

Divides rows into groups.

Each group is processed separately.

---

## ORDER BY

Defines the sorting order inside the window.

Used for ranking and running calculations.

---

# ROW_NUMBER()

ROW_NUMBER assigns a unique sequential number to each row.

Even duplicate values receive different row numbers.

---

# RANK()

RANK assigns ranking to rows based on sorting order.

Duplicate values receive the same rank.

Ranks may skip numbers after duplicates.

---

# DENSE_RANK()

DENSE_RANK is similar to RANK but does not skip rank numbers.

Duplicate values receive the same rank, but ranking continues without gaps.

---

# Aggregate Window Functions

Aggregate functions can also work as window functions.

Examples include:

- SUM()
- AVG()
- MIN()
- MAX()
- COUNT()

These functions help perform row-wise aggregate analysis.

---

# Running Total

Running total calculates cumulative values row by row.

It is commonly used in:

- Sales reports
- Financial analysis
- Banking systems
- Payroll systems

---

# Difference Between GROUP BY and Window Functions

| GROUP BY | Window Function |
|---|---|
| Combines rows | Keeps all rows |
| Returns grouped result | Returns row-wise result |
| Less detailed | More detailed analysis |

---

# Difference Between RANK and DENSE_RANK

| RANK | DENSE_RANK |
|---|---|
| Skips rank numbers | No skipped numbers |
| Example: 1,1,3 | Example: 1,1,2 |

---

# Real-Time Uses of Window Functions

Window functions are widely used in:

- Banking
- E-commerce
- Reporting systems
- Payroll systems
- HR analytics
- Customer analytics
- Financial reporting

---

# What is CTE

CTE means:

```text
Common Table Expression
```

A CTE is a temporary result set created inside a query.

It improves query readability and helps organize complex SQL logic.

---

# Why CTEs are Used

CTEs are used for:

- Simplifying complex queries
- Improving readability
- Breaking queries into smaller steps
- Reusing query logic
- Creating cleaner SQL code

---

# Important Features of CTE

- Temporary query result
- Exists only during query execution
- Easier to understand than nested subqueries
- Helpful for advanced SQL development

---

# CTE vs Subquery

| CTE | Subquery |
|---|---|
| More readable | Less readable |
| Easier maintenance | Harder maintenance |
| Reusable | Often repeated |

---

# Recursive CTE

Recursive CTE repeatedly references itself.

Used for:

- Hierarchical data
- Employee-manager structures
- Tree structures
- Recursive calculations

---

# Real-Time Uses of CTE

CTEs are used in:

- Reporting systems
- ETL pipelines
- Data transformation
- Data engineering
- Complex analytics
- Financial reporting

---

# SQL Analysis Workflow

```text
Raw Data
    ↓
Window Functions
    ↓
CTE Processing
    ↓
Advanced SQL Analysis
    ↓
Reports and Insights
```

---

# Common Beginner Mistakes

| Mistake | Problem |
|---|---|
| Missing OVER() | Window function error |
| Wrong PARTITION BY | Incorrect grouping |
| Missing ORDER BY | Incorrect ranking |
| Confusing GROUP BY and Window Functions | Wrong analysis |
| Incorrect CTE naming | Query errors |

---

# Important  Understanding

| Concept | Meaning |
|---|---|
| Window Function | Row-wise calculation |
| OVER() | Defines calculation window |
| PARTITION BY | Creates groups |
| ORDER BY | Defines sorting |
| CTE | Temporary query result |

---

#  Learning Flow

```text
Basic SQL
    ↓
GROUP BY
    ↓
Window Functions
    ↓
CTE
    ↓
Advanced SQL Analysis
```

---

# Summary

In Week 3, we learned:

- SQL Window Functions
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Aggregate Window Functions
- PARTITION BY
- Running Totals
- Common Table Expressions (CTE)
- Recursive CTE Basics
- Real-time SQL analysis

These concepts are very important for advanced SQL development, analytics, and data engineering.
