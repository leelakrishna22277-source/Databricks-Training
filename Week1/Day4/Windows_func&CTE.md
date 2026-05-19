# SQL Window Functions and CTE Notes

---

# Introduction to Window Functions

Window functions are special SQL functions used to perform calculations across a set of rows related to the current row without grouping the result into a single row.

They are very useful for:

- Ranking data
- Running totals
- Moving averages
- Comparing rows
- Department-wise analysis
- Sales trend analysis

---

# General Syntax of Window Functions

```sql
function_name() OVER (
    PARTITION BY column_name
    ORDER BY column_name
)
```

---

# Important Parts

## PARTITION BY

Divides rows into groups.

Example:

```sql
partition by department
```

This creates separate calculations for each department.

---

## ORDER BY

Defines the order for calculations.

Example:

```sql
order by salary desc
```

---

# Table Structures

## Employees Table

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(100),
    manager_id INT NULL,
    salary DECIMAL(10,2),
    hire_date DATE
);
```

## Customers Table

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);
```

## Orders Table

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
```

---

# Insert Data

## Insert Employees

```sql
INSERT INTO employees VALUES
(1, 'Alice Johnson', 'Sales', NULL, 70000, '2020-01-15'),
(2, 'Bob Smith', 'Sales', 1, 65000, '2021-03-20'),
(3, 'Charlie Brown', 'IT', NULL, 90000, '2019-07-01'),
(4, 'Diana Prince', 'IT', 3, 95000, '2018-11-11'),
(5, 'Ethan Hunt', 'HR', NULL, 60000, '2022-02-10'),
(6, 'Fiona Green', 'HR', 5, 58000, '2023-05-12'),
(7, 'George Miller', 'Finance', NULL, 85000, '2017-09-18'),
(8, 'Hannah Lee', 'Finance', 7, 82000, '2021-08-30');
```

## Insert Customers

```sql
INSERT INTO customers VALUES
(1, 'Acme Corp', 'New York'),
(2, 'Tech Solutions', 'Chicago'),
(3, 'Global Retail', 'Dallas'),
(4, 'Blue Sky Ltd', 'Seattle'),
(5, 'NextGen Systems', 'Boston');
```

## Insert Orders

```sql
INSERT INTO orders VALUES
(101, 1, 1, '2024-01-10', 500),
(102, 2, 2, '2024-01-11', 700),
(103, 1, 1, '2024-01-15', 1200),
(104, 3, 3, '2024-01-18', 300),
(105, 4, 4, '2024-01-20', 900),
(106, 5, 2, '2024-01-25', 1500),
(107, 2, 1, '2024-02-01', 650),
(108, 1, 3, '2024-02-05', 1100),
(109, 3, 4, '2024-02-10', 400),
(110, 4, 2, '2024-02-15', 950),
(111, 5, 1, '2024-02-20', 2000),
(112, 1, 4, '2024-02-25', 750);
```

---

# ROW_NUMBER()

## Definition

Assigns a unique number to each row.

## Syntax

```sql
row_number() over(order by salary desc)
```

## Important Point

Even duplicate values get different numbers.

## Example

```sql
select employee_name,salary,
row_number() over(order by salary desc) as row_num
from employees;
```

## Real-Time Use Cases

- Top N records
- Pagination
- Latest records

---

# RANK()

## Definition

Assigns ranks to rows.

Duplicate values get same rank.

Next rank is skipped.

## Syntax

```sql
rank() over(order by salary desc)
```

## Example

Salary values:

```text
90000
90000
85000
```

Ranks:

```text
1
1
3
```

Rank 2 is skipped.

## Example Query

```sql
select employee_name,salary,
rank() over(order by salary desc) as rank_num
from employees;
```

## Real-Time Use Cases

- Leaderboards
- Competition rankings

---

# DENSE_RANK()

## Definition

Same as RANK() but does not skip numbers.

## Syntax

```sql
dense_rank() over(order by salary desc)
```

## Example

Salary values:

```text
90000
90000
85000
```

Dense ranks:

```text
1
1
2
```

## Example Query

```sql
select employee_name,salary,
dense_rank() over(order by salary desc) as dense_rank_num
from employees;
```

## Real-Time Use Cases

- Employee rankings
- Sales rankings

---

# LAG()

## Definition

Gets the previous row value.

## Syntax

```sql
lag(column_name)
over(order by column_name)
```

## Example Query

```sql
select order_id,
total_amount,
lag(total_amount)
over(order by order_date) as previous_amount
from orders;
```

## Example Output

| order_id | total_amount | previous_amount |
|----------|--------------|----------------|
| 101 | 500 | NULL |
| 102 | 700 | 500 |
| 103 | 1200 | 700 |

## Real-Time Use Cases

- Compare previous sales
- Previous month revenue
- Trend analysis

---

# LEAD()

## Definition

Gets the next row value.

## Syntax

```sql
lead(column_name)
over(order by column_name)
```

## Example Query

```sql
select order_id,
total_amount,
lead(total_amount)
over(order by order_date) as next_amount
from orders;
```

## Example Output

| order_id | total_amount | next_amount |
|----------|--------------|-------------|
| 101 | 500 | 700 |
| 102 | 700 | 1200 |
| 103 | 1200 | NULL |

## Real-Time Use Cases

- Forecast analysis
- Comparing future values

---

# NTILE()

## Definition

Divides rows into groups.

## Syntax

```sql
ntile(4) over(order by salary desc)
```

## Explanation

Divides rows into 4 equal groups.

## Example Query

```sql
select employee_name,
salary,
ntile(4) over(order by salary desc) as quartile
from employees;
```

## Real-Time Use Cases

- Salary quartiles
- Customer segmentation
- Performance grouping

---

# SUM() OVER()

## Definition

Calculates totals without grouping rows.

## Syntax

```sql
sum(column_name)
over(partition by column_name)
```

## Example Query

```sql
select employee_name,
department,
salary,
sum(salary) over(partition by department) as dept_total
from employees;
```

## Real-Time Use Cases

- Department payroll
- Total sales

---

# AVG() OVER()

## Definition

Calculates averages using window functions.

## Example Query

```sql
select employee_name,
department,
salary,
avg(salary) over(partition by department) as dept_avg
from employees;
```

---

# COUNT() OVER()

## Definition

Counts rows while displaying all rows.

## Example Query

```sql
select employee_name,
count(*) over() as total_employees
from employees;
```

---

# FIRST_VALUE()

## Definition

Returns the first value in the window.

## Example Query

```sql
select employee_name,
salary,
first_value(salary)
over(order by salary desc) as highest_salary
from employees;
```

---

# LAST_VALUE()

## Definition

Returns the last value in the window.

## Example Query

```sql
select employee_name,
salary,
last_value(salary)
over(
order by salary
rows between unbounded preceding and unbounded following
) as lowest_salary
from employees;
```

---

# Running Total

## Definition

Calculates cumulative total.

## Example Query

```sql
select order_id,
order_date,
total_amount,
sum(total_amount)
over(order by order_date) as running_total
from orders;
```

---

# Moving Average

## Definition

Calculates average over a moving range.

## Example Query

```sql
select order_id,
total_amount,
avg(total_amount)
over(
order by order_date
rows between 2 preceding and current row
) as moving_avg
from orders;
```

---

# CTE (Common Table Expression)

## Definition

A temporary result set used inside a query.

## Syntax

```sql
with cte_name as (
    query
)
select * from cte_name;
```

---

# Simple CTE Example

```sql
with employee_cte as (
    select employee_name,salary
    from employees
)
select * from employee_cte;
```

---

# Multiple CTEs

## Example

```sql
with dept_salary as (
    select department,
    sum(salary) as total_salary
    from employees
    group by department
),
avg_salary as (
    select avg(total_salary) as avg_sal
    from dept_salary
)
select * from dept_salary;
```

---

# Recursive CTE

## Definition

A CTE that references itself.

## Syntax

```sql
with recursive cte_name as (
    anchor_query

    union all

    recursive_query
)
select * from cte_name;
```

---

# Recursive CTE Example

## Generate Numbers 1 to 10

```sql
with recursive numbers as (
    select 1 as num

    union all

    select num + 1
    from numbers
    where num < 10
)
select * from numbers;
```

---

# Employee Hierarchy Recursive CTE

```sql
with recursive emp_hierarchy as (

    select employee_id,
           employee_name,
           manager_id
    from employees
    where manager_id is null

    union all

    select e.employee_id,
           e.employee_name,
           e.manager_id
    from employees e
    join emp_hierarchy eh
    on e.manager_id = eh.employee_id
)
select * from emp_hierarchy;
```

---

# Assignment Questions

## Window Functions

1. Use ROW_NUMBER() to assign a row number to employees ordered by salary descending.

2. Use RANK() to rank employees by salary.

3. Use DENSE_RANK() to rank employees by salary.

4. Find the top 3 highest-paid employees using a window function.

5. Rank employees within each department using PARTITION BY.

6. Display the highest salary in each department using a window function.

7. Calculate the running total of order amounts ordered by order_date.

8. Calculate the cumulative sales amount for each employee.

9. Use LAG() to show the previous order amount for each customer.

10. Use LEAD() to show the next order amount for each customer.

11. Find the difference between the current order amount and previous order amount.

12. Calculate a moving average of the last 3 orders.

13. Use NTILE(4) to divide employees into salary quartiles.

14. Find the first order placed by each customer using ROW_NUMBER().

15. Find the latest order placed by each customer.

16. Display employee salaries along with department average salary.

17. Find employees earning above their department average salary.

18. Use SUM() OVER(PARTITION BY department) to calculate department payroll.

19. Find the percentage contribution of each employee salary within their department.

20. Use COUNT() OVER() to show total number of employees alongside each row.

---

# CTE Questions

21. Create a CTE to calculate total sales per employee.

22. Use a CTE to find employees whose sales exceed the company average.

23. Create multiple CTEs to calculate customer total spending and rankings.

24. Write a recursive CTE to generate numbers from 1 to 10.

25. Use a recursive CTE to display employee hierarchy data.

26. Create a CTE that filters orders above the average order amount.

27. Use a CTE and window function together to rank customers by total spending.

28. Find the second-highest salary in each department.

29. Display the difference between each employee salary and the department maximum salary.

30. Combine CTEs and window functions to find the top-performing employee in each department based on total sales.

---

# Bonus Challenge

Create a report showing monthly sales trends using:

- CTEs
- Running totals
- LAG()
- Percentage growth calculations
