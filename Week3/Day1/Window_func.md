# SQL Window Functions Practice – ROW_NUMBER(), RANK(), and DENSE_RANK()

---

# Overview

This practice document helps in learning SQL Window Functions using employee data.

Topics Covered:

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- ORDER BY in Window Functions

These functions are mainly used for:

- Ranking employees
- Finding top salaries
- Assigning sequential numbers
- Comparing rows within groups
- Handling duplicate values in ranking

---

# Employees Table Structure

```sql
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);
```

---

# Sample Data

```sql
INSERT INTO employees VALUES
(1, 'Amit', 'Chennai', 2000, '2023-01-01'),
(2, 'Ravi', 'Hyderabad', 1500, '2023-01-02'),
(3, 'Sneha', 'Chennai', 3000, '2023-01-03'),
(4, 'Kiran', 'Bangalore', 2500, '2023-01-04'),
(5, 'Priya', 'Chennai', 2000, '2023-01-05'),
(6, 'Arjun', 'Hyderabad', 1800, '2023-01-06'),
(7, 'Neha', 'Bangalore', 2200, '2023-01-07'),
(8, 'Vikas', 'Chennai', 3000, '2023-01-08'),
(9, 'Anjali', 'Hyderabad', 1700, '2023-01-09'),
(10, 'Rahul', 'Bangalore', 2600, '2023-01-10'),
(11, 'Suresh', 'Chennai', 2800, '2023-01-11'),
(12, 'Pooja', 'Hyderabad', 1600, '2023-01-12'),
(13, 'Manoj', 'Bangalore', 2400, '2023-01-13'),
(14, 'Divya', 'Chennai', 2100, '2023-01-14'),
(15, 'Karthik', 'Hyderabad', 1900, '2023-01-15'),
(16, 'Meena', 'Bangalore', 2300, '2023-01-16'),
(17, 'Raj', 'Chennai', 2700, '2023-01-17'),
(18, 'Simran', 'Hyderabad', 2000, '2023-01-18'),
(19, 'Deepak', 'Bangalore', 2500, '2023-01-19'),
(20, 'Nisha', 'Chennai', 2600, '2023-01-20');
```

---

# ROW_NUMBER()

## Definition

ROW_NUMBER() assigns a unique sequential number to each row.

Even if duplicate values exist, row numbers will always be different.

---

## Syntax

```sql
ROW_NUMBER() OVER(ORDER BY column_name)
```

---

# ROW_NUMBER() Questions

1. Assign a unique row number to all employees based on salary (highest first).

2. Assign row numbers to employees within each department based on salary descending.

3. Assign row numbers based on employee joining date (latest first).

4. Assign row numbers within each department based on earliest joining date.

5. Assign row numbers to employees based on join date.

6. Assign row numbers within each department based on salary (highest first).

7. Assign row numbers to employees based on salary (lowest first).

8. Assign row numbers within department for employees based on name alphabetically.

---

# RANK()

## Definition

RANK() assigns ranking values to rows.

If duplicate values exist, same rank is assigned and rank numbers are skipped.

---

## Syntax

```sql
RANK() OVER(ORDER BY column_name)
```

---

# RANK() Questions

9. Rank all employees based on salary (highest first).

10. Rank employees within each department based on salary.

11. Rank employees based on joining date (latest gets rank 1).

12. Rank employees based on salary (highest first).

13. Rank employees within each department based on salary.

14. Rank employees within department based on salary (lowest first).

15. Rank employees based on name alphabetically.

16. Rank employees within each department based on joining date.

---

# DENSE_RANK()

## Definition

DENSE_RANK() works similar to RANK().

But it does not skip rank numbers when duplicate values exist.

---

## Syntax

```sql
DENSE_RANK() OVER(ORDER BY column_name)
```

---

# DENSE_RANK() Questions

17. Assign dense rank to employees based on salary (highest first).

18. Assign dense rank within each department based on salary.

19. Assign dense rank to employees based on joining date.

20. Assign dense rank to employees based on salary.

21. Assign dense rank within each department based on salary.

22. Assign dense rank to employees based on salary (lowest first).

23. Assign dense rank within department based on joining date.

24. Assign dense rank to employees based on join date.

---

# Difference Between ROW_NUMBER(), RANK(), and DENSE_RANK()

| Function | Duplicate Values | Skips Rank Numbers | Unique Numbers |
|---|---|---|---|
| ROW_NUMBER() | No | No | Yes |
| RANK() | Yes | Yes | No |
| DENSE_RANK() | Yes | No | No |

---


