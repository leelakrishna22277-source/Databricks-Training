# SQL Window Functions Practice

# Table Data

## Employees Table

### Query

```sql
select *from Employees;
```

### Output

```text
+-------------+---------------+------------+------------+----------+------------+
| employee_id | employee_name | department | manager_id | salary   | hire_date  |
+-------------+---------------+------------+------------+----------+------------+
|           1 | Alice Johnson | Sales      |       NULL | 70000.00 | 2020-01-15 |
|           2 | Bob Smith     | Sales      |          1 | 65000.00 | 2021-03-20 |
|           3 | Charlie Brown | IT         |       NULL | 90000.00 | 2019-07-01 |
|           4 | Diana Prince  | IT         |          3 | 95000.00 | 2018-11-11 |
|           5 | Ethan Hunt    | HR         |       NULL | 60000.00 | 2022-02-10 |
|           6 | Fiona Green   | HR         |          5 | 58000.00 | 2023-05-12 |
|           7 | George Miller | Finance    |       NULL | 85000.00 | 2017-09-18 |
|           8 | Hannah Lee    | Finance    |          7 | 82000.00 | 2021-08-30 |
+-------------+---------------+------------+------------+----------+------------+
```

---

## Customers Table

### Query

```sql
select *from Customers;
```

### Output

```text
+-------------+-----------------+----------+
| customer_id | customer_name   | city     |
+-------------+-----------------+----------+
|           1 | Acme Corp       | New York |
|           2 | Tech Solutions  | Chicago  |
|           3 | Global Retail   | Dallas   |
|           4 | Blue Sky Ltd    | Seattle  |
|           5 | NextGen Systems | Boston   |
+-------------+-----------------+----------+
```

---

## Orders Table

### Query

```sql
select *from Orders;
```

### Output

```text
+----------+-------------+-------------+------------+--------------+
| order_id | customer_id | employee_id | order_date | total_amount |
+----------+-------------+-------------+------------+--------------+
|      101 |           1 |           1 | 2024-01-10 |       500.00 |
|      102 |           2 |           2 | 2024-01-11 |       700.00 |
|      103 |           1 |           1 | 2024-01-15 |      1200.00 |
|      104 |           3 |           3 | 2024-01-18 |       300.00 |
|      105 |           4 |           4 | 2024-01-20 |       900.00 |
|      106 |           5 |           2 | 2024-01-25 |      1500.00 |
|      107 |           2 |           1 | 2024-02-01 |       650.00 |
|      108 |           1 |           3 | 2024-02-05 |      1100.00 |
|      109 |           3 |           4 | 2024-02-10 |       400.00 |
|      110 |           4 |           2 | 2024-02-15 |       950.00 |
|      111 |           5 |           1 | 2024-02-20 |      2000.00 |
|      112 |           1 |           4 | 2024-02-25 |       750.00 |
+----------+-------------+-------------+------------+--------------+
```

---

# 1. Use ROW_NUMBER() to assign a row number to employees ordered by salary descending

## Query

```sql
select employee_id,employee_name,department,manager_id,salary,hire_date,
ROW_NUMBER() over(order by salary desc) as row_num1
from Employees;
```

## Output

```text
+-------------+---------------+------------+------------+----------+------------+----------+
| employee_id | employee_name | department | manager_id | salary   | hire_date  | row_num1 |
+-------------+---------------+------------+------------+----------+------------+----------+
|           4 | Diana Prince  | IT         |          3 | 95000.00 | 2018-11-11 |        1 |
|           3 | Charlie Brown | IT         |       NULL | 90000.00 | 2019-07-01 |        2 |
|           7 | George Miller | Finance    |       NULL | 85000.00 | 2017-09-18 |        3 |
|           8 | Hannah Lee    | Finance    |          7 | 82000.00 | 2021-08-30 |        4 |
|           1 | Alice Johnson | Sales      |       NULL | 70000.00 | 2020-01-15 |        5 |
|           2 | Bob Smith     | Sales      |          1 | 65000.00 | 2021-03-20 |        6 |
|           5 | Ethan Hunt    | HR         |       NULL | 60000.00 | 2022-02-10 |        7 |
|           6 | Fiona Green   | HR         |          5 | 58000.00 | 2023-05-12 |        8 |
+-------------+---------------+------------+------------+----------+------------+----------+
```

---

# 2. Use RANK() to rank employees by salary

## Query

```sql
select employee_id,employee_name,department,manager_id,salary,hire_date,
RANK() over(order by salary desc) as row_num2
from Employees;
```

## Output

```text
+-------------+---------------+------------+------------+----------+------------+----------+
| employee_id | employee_name | department | manager_id | salary   | hire_date  | row_num2 |
+-------------+---------------+------------+------------+----------+------------+----------+
|           4 | Diana Prince  | IT         |          3 | 95000.00 | 2018-11-11 |        1 |
|           3 | Charlie Brown | IT         |       NULL | 90000.00 | 2019-07-01 |        2 |
|           7 | George Miller | Finance    |       NULL | 85000.00 | 2017-09-18 |        3 |
|           8 | Hannah Lee    | Finance    |          7 | 82000.00 | 2021-08-30 |        4 |
|           1 | Alice Johnson | Sales      |       NULL | 70000.00 | 2020-01-15 |        5 |
|           2 | Bob Smith     | Sales      |          1 | 65000.00 | 2021-03-20 |        6 |
|           5 | Ethan Hunt    | HR         |       NULL | 60000.00 | 2022-02-10 |        7 |
|           6 | Fiona Green   | HR         |          5 | 58000.00 | 2023-05-12 |        8 |
+-------------+---------------+------------+------------+----------+------------+----------+
```

---

# 3. Use DENSE_RANK() to rank employees by salary

## Query

```sql
select employee_id,employee_name,department,manager_id,salary,hire_date,
DENSE_RANK() over(order by salary desc) as row_num3
from Employees;
```

## Output

```text
+-------------+---------------+------------+------------+----------+------------+----------+
| employee_id | employee_name | department | manager_id | salary   | hire_date  | row_num3 |
+-------------+---------------+------------+------------+----------+------------+----------+
|           4 | Diana Prince  | IT         |          3 | 95000.00 | 2018-11-11 |        1 |
|           3 | Charlie Brown | IT         |       NULL | 90000.00 | 2019-07-01 |        2 |
|           7 | George Miller | Finance    |       NULL | 85000.00 | 2017-09-18 |        3 |
|           8 | Hannah Lee    | Finance    |          7 | 82000.00 | 2021-08-30 |        4 |
|           1 | Alice Johnson | Sales      |       NULL | 70000.00 | 2020-01-15 |        5 |
|           2 | Bob Smith     | Sales      |          1 | 65000.00 | 2021-03-20 |        6 |
|           5 | Ethan Hunt    | HR         |       NULL | 60000.00 | 2022-02-10 |        7 |
|           6 | Fiona Green   | HR         |          5 | 58000.00 | 2023-05-12 |        8 |
+-------------+---------------+------------+------------+----------+------------+----------+
```

---

# 4. Find the top 3 highest-paid employees using a window function

## Query

```sql
select employee_id,employee_name,department,manager_id,salary,hire_date,row_num4
from (
select employee_id,employee_name,department,manager_id,salary,hire_date,
DENSE_RANK() over(order by salary desc) as row_num4
from Employees
) as temp
where row_num4<=3;
```

## Output

```text
+-------------+---------------+------------+------------+----------+------------+----------+
| employee_id | employee_name | department | manager_id | salary   | hire_date  | row_num4 |
+-------------+---------------+------------+------------+----------+------------+----------+
|           4 | Diana Prince  | IT         |          3 | 95000.00 | 2018-11-11 |        1 |
|           3 | Charlie Brown | IT         |       NULL | 90000.00 | 2019-07-01 |        2 |
|           7 | George Miller | Finance    |       NULL | 85000.00 | 2017-09-18 |        3 |
+-------------+---------------+------------+------------+----------+------------+----------+
```

---

# 5. Rank employees within each department using PARTITION BY

## Query

```sql
select employee_id,employee_name,department,manager_id,salary,hire_date,
RANK() over(partition by department order by salary desc) as row_num5
from Employees;
```

## Output

```text
+-------------+---------------+------------+------------+----------+------------+----------+
| employee_id | employee_name | department | manager_id | salary   | hire_date  | row_num5 |
+-------------+---------------+------------+------------+----------+------------+----------+
|           7 | George Miller | Finance    |       NULL | 85000.00 | 2017-09-18 |        1 |
|           8 | Hannah Lee    | Finance    |          7 | 82000.00 | 2021-08-30 |        2 |
|           5 | Ethan Hunt    | HR         |       NULL | 60000.00 | 2022-02-10 |        1 |
|           6 | Fiona Green   | HR         |          5 | 58000.00 | 2023-05-12 |        2 |
|           4 | Diana Prince  | IT         |          3 | 95000.00 | 2018-11-11 |        1 |
|           3 | Charlie Brown | IT         |       NULL | 90000.00 | 2019-07-01 |        2 |
|           1 | Alice Johnson | Sales      |       NULL | 70000.00 | 2020-01-15 |        1 |
|           2 | Bob Smith     | Sales      |          1 | 65000.00 | 2021-03-20 |        2 |
+-------------+---------------+------------+------------+----------+------------+----------+
```
# Question 6
## Display the highest salary in each department using a window function.

### Query
```sql
select employee_id,
employee_name,
department,
salary,
max(salary) over(partition by department) as highest_salary
from employees;
```

### Output
```text
+-------------+---------------+------------+----------+----------------+
| employee_id | employee_name | department | salary   | highest_salary |
+-------------+---------------+------------+----------+----------------+
|           7 | George Miller | Finance    | 85000.00 |       85000.00 |
|           8 | Hannah Lee    | Finance    | 82000.00 |       85000.00 |
|           5 | Ethan Hunt    | HR         | 60000.00 |       60000.00 |
|           6 | Fiona Green   | HR         | 58000.00 |       60000.00 |
|           3 | Charlie Brown | IT         | 90000.00 |       95000.00 |
|           4 | Diana Prince  | IT         | 95000.00 |       95000.00 |
|           1 | Alice Johnson | Sales      | 70000.00 |       70000.00 |
|           2 | Bob Smith     | Sales      | 65000.00 |       70000.00 |
+-------------+---------------+------------+----------+----------------+
```

---

# Question 7
## Calculate the running total of order amounts ordered by order_date.

### Query
```sql
select order_id,customer_id,employee_id,order_date,total_amount,
sum(total_amount) over(order by order_date desc) as running_total
from Orders;
```

### Output
```text
+----------+-------------+-------------+------------+--------------+---------------+
| order_id | customer_id | employee_id | order_date | total_amount | running_total |
+----------+-------------+-------------+------------+--------------+---------------+
|      112 |           1 |           4 | 2024-02-25 |       750.00 |        750.00 |
|      111 |           5 |           1 | 2024-02-20 |      2000.00 |       2750.00 |
|      110 |           4 |           2 | 2024-02-15 |       950.00 |       3700.00 |
|      109 |           3 |           4 | 2024-02-10 |       400.00 |       4100.00 |
|      108 |           1 |           3 | 2024-02-05 |      1100.00 |       5200.00 |
|      107 |           2 |           1 | 2024-02-01 |       650.00 |       5850.00 |
|      106 |           5 |           2 | 2024-01-25 |      1500.00 |       7350.00 |
|      105 |           4 |           4 | 2024-01-20 |       900.00 |       8250.00 |
|      104 |           3 |           3 | 2024-01-18 |       300.00 |       8550.00 |
|      103 |           1 |           1 | 2024-01-15 |      1200.00 |       9750.00 |
|      102 |           2 |           2 | 2024-01-11 |       700.00 |      10450.00 |
|      101 |           1 |           1 | 2024-01-10 |       500.00 |      10950.00 |
+----------+-------------+-------------+------------+--------------+---------------+
```

---

# Question 8
## Calculate the cumulative sales amount for each employee.

### Query
```sql
select employee_id,employee_name,department,manager_id,hire_date,salary,
sum(salary) over(partition by employee_id order by hire_date) as cum_sales
from Employees;
```

### Output
```text
+-------------+---------------+------------+------------+------------+----------+-----------+
| employee_id | employee_name | department | manager_id | hire_date  | salary   | cum_sales |
+-------------+---------------+------------+------------+------------+----------+-----------+
|           1 | Alice Johnson | Sales      |       NULL | 2020-01-15 | 70000.00 |  70000.00 |
|           2 | Bob Smith     | Sales      |          1 | 2021-03-20 | 65000.00 |  65000.00 |
|           3 | Charlie Brown | IT         |       NULL | 2019-07-01 | 90000.00 |  90000.00 |
|           4 | Diana Prince  | IT         |          3 | 2018-11-11 | 95000.00 |  95000.00 |
|           5 | Ethan Hunt    | HR         |       NULL | 2022-02-10 | 60000.00 |  60000.00 |
|           6 | Fiona Green   | HR         |          5 | 2023-05-12 | 58000.00 |  58000.00 |
|           7 | George Miller | Finance    |       NULL | 2017-09-18 | 85000.00 |  85000.00 |
|           8 | Hannah Lee    | Finance    |          7 | 2021-08-30 | 82000.00 |  82000.00 |
+-------------+---------------+------------+------------+------------+----------+-----------+
```

---

# Question 9
## Use LAG() to show the previous order amount for each customer.

### Query
```sql
select order_id,customer_id,order_date,total_amount,
lag(total_amount) over(order by order_date) as prev_amount
from Orders;
```

### Output
```text
+----------+-------------+------------+--------------+-------------+
| order_id | customer_id | order_date | total_amount | prev_amount |
+----------+-------------+------------+--------------+-------------+
|      101 |           1 | 2024-01-10 |       500.00 |        NULL |
|      102 |           2 | 2024-01-11 |       700.00 |      500.00 |
|      103 |           1 | 2024-01-15 |      1200.00 |      700.00 |
|      104 |           3 | 2024-01-18 |       300.00 |     1200.00 |
|      105 |           4 | 2024-01-20 |       900.00 |      300.00 |
|      106 |           5 | 2024-01-25 |      1500.00 |      900.00 |
|      107 |           2 | 2024-02-01 |       650.00 |     1500.00 |
|      108 |           1 | 2024-02-05 |      1100.00 |      650.00 |
|      109 |           3 | 2024-02-10 |       400.00 |     1100.00 |
|      110 |           4 | 2024-02-15 |       950.00 |      400.00 |
|      111 |           5 | 2024-02-20 |      2000.00 |      950.00 |
|      112 |           1 | 2024-02-25 |       750.00 |     2000.00 |
+----------+-------------+------------+--------------+-------------+
```

---

# Question 10
## Use LEAD() to show the next order amount for each customer.

### Query
```sql
select order_id,customer_id,order_date,total_amount,
lead(total_amount) over(order by order_date) as next_amount
from Orders;
```

### Output
```text
+----------+-------------+------------+--------------+-------------+
| order_id | customer_id | order_date | total_amount | next_amount |
+----------+-------------+------------+--------------+-------------+
|      101 |           1 | 2024-01-10 |       500.00 |      700.00 |
|      102 |           2 | 2024-01-11 |       700.00 |     1200.00 |
|      103 |           1 | 2024-01-15 |      1200.00 |      300.00 |
|      104 |           3 | 2024-01-18 |       300.00 |      900.00 |
|      105 |           4 | 2024-01-20 |       900.00 |     1500.00 |
|      106 |           5 | 2024-01-25 |      1500.00 |      650.00 |
|      107 |           2 | 2024-02-01 |       650.00 |     1100.00 |
|      108 |           1 | 2024-02-05 |      1100.00 |      400.00 |
|      109 |           3 | 2024-02-10 |       400.00 |      950.00 |
|      110 |           4 | 2024-02-15 |       950.00 |     2000.00 |
|      111 |           5 | 2024-02-20 |      2000.00 |      750.00 |
|      112 |           1 | 2024-02-25 |       750.00 |        NULL |
+----------+-------------+------------+--------------+-------------+
```
