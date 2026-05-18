# NULL Functions Practice with Queries and Outputs

---

# Table 1: Employees

```sql
CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    salary INT,
    bonus INT,
    manager_id INT
);

INSERT INTO Employees VALUES
(1, 'Amit', 50000, NULL, 101),
(2, 'John', NULL, 5000, 102),
(3, 'Sara', 60000, NULL, NULL),
(4, 'David', NULL, NULL, 103),
(5, 'Priya', 45000, 3000, 101),
(6, 'Kiran', NULL, NULL, NULL),
(7, 'Ravi', 70000, 7000, 102),
(8, 'Neha', NULL, 2000, NULL);
```

---

# Table 2: Orders

```sql
CREATE TABLE Orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT,
    discount INT,
    coupon_code VARCHAR(20)
);

INSERT INTO Orders VALUES
(101, 'Amit', 1000, NULL, 'DISC10'),
(102, 'John', NULL, 50, NULL),
(103, 'Sara', 2000, NULL, 'DISC20'),
(104, 'David', NULL, NULL, NULL),
(105, 'Priya', 1500, 100, NULL),
(106, 'Kiran', NULL, NULL, 'DISC5'),
(107, 'Ravi', 3000, NULL, NULL),
(108, 'Neha', NULL, 200, 'DISC15');
```

---

# Table 3: Products

```sql
CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50),
    price INT,
    category VARCHAR(50),
    stock INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 50000, 'Electronics', 10),
(2, 'Phone', NULL, 'Electronics', NULL),
(3, 'Tablet', 30000, NULL, 5),
(4, 'Headphones', NULL, NULL, NULL),
(5, 'Monitor', 20000, 'Electronics', 0),
(6, 'Keyboard', NULL, 'Accessories', 15),
(7, 'Mouse', 500, NULL, NULL),
(8, 'Printer', NULL, 'Electronics', 3);
```

---

# LEVEL 1 (IS NULL/IS NOT NULL)

# Query 1

## Question

Show all employees whose salary is NULL

## Query

```sql
select *from Employees
where salary is null;
```

## Output

| emp_id | name | salary | bonus | manager_id |
|---|---|---|---|---|
| 2 | John | NULL | 5000 | 102 |
| 4 | David | NULL | NULL | 103 |
| 6 | Kiran | NULL | NULL | NULL |
| 8 | Neha | NULL | 2000 | NULL |

---

# Query 2

## Question

Show all orders where discount is NOT NULL

## Query

```sql
select *from Orders
where discount is not null;
```

## Output

| order_id | customer_name | amount | discount | coupon_code |
|---|---|---|---|---|
| 102 | John | NULL | 50 | NULL |
| 105 | Priya | 1500 | 100 | NULL |
| 108 | Neha | NULL | 200 | DISC15 |

---

# Query 3

## Question

Get products where category is NULL

## Query

```sql
select *from Products
where category is null;
```

## Output

| product_id | product_name | price | category | stock |
|---|---|---|---|---|
| 3 | Tablet | 30000 | NULL | 5 |
| 4 | Headphones | NULL | NULL | NULL |
| 7 | Mouse | 500 | NULL | NULL |

---

# Query 4

## Question

Count number of employees with NULL manager_id

## Query

```sql
select count(*) as total_null_emp
from Employees
where manager_id is null;
```

## Output

| total_null_emp |
|---|
| 3 |

# LEVEL 2 (IFNULL(MySQL) / ISNULL)

---

# Query 5

## Question

Replace NULL salary with 0

## Query

```sql
select name,
       ifnull(salary,0) as update_sal
from Employees;
```

## Output

| name | update_sal |
|---|---|
| Amit | 50000 |
| John | 0 |
| Sara | 60000 |
| David | 0 |
| Priya | 45000 |
| Kiran | 0 |
| Ravi | 70000 |
| Neha | 0 |

---

# Query 6

## Question

Replace NULL bonus with 1000

## Query

```sql
select name,
       ifnull(bonus,0) as update_bonus
from Employees;
```

## Output

| name | update_bonus |
|---|---|
| Amit | 0 |
| John | 5000 |
| Sara | 0 |
| David | 0 |
| Priya | 3000 |
| Kiran | 0 |
| Ravi | 7000 |
| Neha | 2000 |

---

# Query 7

## Question

Show order amount, if NULL replace with 500

## Query

```sql
select order_id,
       ifnull(amount,0) as update_amount
from Orders;
```

## Output

| order_id | update_amount |
|---|---|
| 101 | 1000 |
| 102 | 0 |
| 103 | 2000 |
| 104 | 0 |
| 105 | 1500 |
| 106 | 0 |
| 107 | 3000 |
| 108 | 0 |

---

# Query 8

## Question

Replace NULL stock with 0

## Query

```sql
select product_name,
       ifnull(stock,0) as update_stock
from Products;
```

## Output

| product_name | update_stock |
|---|---|
| Laptop | 10 |
| Phone | 0 |
| Tablet | 5 |
| Headphones | 0 |
| Monitor | 0 |
| Keyboard | 15 |
| Mouse | 0 |
| Printer | 3 |

# LEVEL 3 (COALESCE)

---

# Query 9

## Question

Show employee earnings using salary, if NULL use bonus

## Query

```sql
select name,
       coalesce(salary,bonus) as earnings
from Employees;
```

## Output

| name | earnings |
|---|---|
| Amit | 50000 |
| John | 5000 |
| Sara | 60000 |
| David | NULL |
| Priya | 45000 |
| Kiran | NULL |
| Ravi | 70000 |
| Neha | 2000 |

---

# Query 10

## Question

Show first available value:
salary → bonus → 0

## Query

```sql
select name,
       coalesce(salary,bonus,0) as earnings
from Employees;
```

## Output

| name | earnings |
|---|---|
| Amit | 50000 |
| John | 5000 |
| Sara | 60000 |
| David | 0 |
| Priya | 45000 |
| Kiran | 0 |
| Ravi | 70000 |
| Neha | 2000 |

---

# Query 11

## Question

Show product price:
price → 1000 (default)

## Query

```sql
select product_name,
       coalesce(price,1000) as price
from Products;
```

## Output

| product_name | price |
|---|---|
| Laptop | 50000 |
| Phone | 1000 |
| Tablet | 30000 |
| Headphones | 1000 |
| Monitor | 20000 |
| Keyboard | 1000 |
| Mouse | 500 |
| Printer | 1000 |

---

# Query 12

## Question

Get customer payment:
amount → discount → 0

## Query

```sql
select coalesce(amount,discount,0) as cust_payment
from Orders;
```

## Output

| cust_payment |
|---|
| 1000 |
| 50 |
| 2000 |
| 0 |
| 1500 |
| 0 |
| 3000 |
| 200 |

# LEVEL 4 (NULLIF)

---

# Query 13

## Question

Convert salary to NULL if salary = 0

## Query

```sql
select name,
       nullif(salary,0) as salary
from Employees;
```

## Output

| name | salary |
|---|---|
| Amit | 50000 |
| John | NULL |
| Sara | 60000 |
| David | NULL |
| Priya | 45000 |
| Kiran | NULL |
| Ravi | 70000 |
| Neha | NULL |

---

# Query 14

## Question

Convert discount to NULL if discount = 0

## Query

```sql
select order_id,
       amount,
       nullif(discount,0) as discount
from Orders;
```

## Output

| order_id | amount | discount |
|---|---|---|
| 101 | 1000 | NULL |
| 102 | NULL | 50 |
| 103 | 2000 | NULL |
| 104 | NULL | NULL |
| 105 | 1500 | 100 |
| 106 | NULL | NULL |
| 107 | 3000 | NULL |
| 108 | NULL | 200 |

---

# Query 15

## Question

Use NULLIF to avoid divide by zero

## Query

```sql
select amount / nullif(discount, 0) AS result
from Orders;
```

## Output

| result |
|---|
| NULL |
| NULL |
| NULL |
| NULL |
| 15.0000 |
| NULL |
| NULL |
| NULL |

---

# Query 16

## Question

Replace coupon_code with NULL if it is 'DISC10'

## Query

```sql
select order_id,
       nullif(coupon_code,'DISC10') as coupon_code1
from Orders;
```

## Output

| order_id | coupon_code1 |
|---|---|
| 101 | NULL |
| 102 | NULL |
| 103 | DISC20 |
| 104 | NULL |
| 105 | NULL |
| 106 | DISC5 |
| 107 | NULL |
| 108 | DISC15 |

# LEVEL 5 (REAL-TIME SCENARIOS)

---

# Query 17

## Question

Calculate total earnings:
salary + bonus (handle NULL properly)

## Query

```sql
select coalesce(salary,0)+coalesce(bonus,0) as earnings
from Employees;
```

## Output

| earnings |
|---|
| 50000 |
| 5000 |
| 60000 |
| 0 |
| 48000 |
| 0 |
| 77000 |
| 2000 |

---

# Query 18

## Question

Show employees where both salary AND bonus are NULL

## Query

```sql
select name
from Employees
where salary is null
and bonus is null;
```

## Output

| name |
|---|
| David |
| Kiran |

---

# Query 19

## Question

Show products where price is NULL but category is NOT NULL

## Query

```sql
select product_name
from Products
where price is null
and category is not null;
```

## Output

| product_name |
|---|
| Phone |
| Keyboard |
| Printer |

---

# Query 20

## Question

Show orders where both amount and discount are NULL

## Query

```sql
select order_id
from Orders
where amount is null
and discount is null;
```

## Output

| order_id |
|---|
| 104 |
| 106 |

# LEVEL 6 (ADVANCED)

---

# Query 21

## Question

Show employee income:
COALESCE(salary, bonus, 1000)

## Query

```sql
select coalesce(salary, bonus, 1000) as income
from Employees;
```

## Output

| income |
|---|
| 50000 |
| 5000 |
| 60000 |
| 1000 |
| 45000 |
| 1000 |
| 70000 |
| 2000 |

---

# Query 22

## Question

Replace empty discount with NULL using NULLIF

## Query

```sql
select nullif(discount,0) as discount
from Orders;
```

## Output

| discount |
|---|
| NULL |
| 50 |
| NULL |
| NULL |
| 100 |
| NULL |
| NULL |
| 200 |

---

# Query 23

## Question

Show final payable amount:
amount - discount (handle NULL)

## Query

```sql
select ifnull(amount,0)-ifnull(discount,0) as final_payment
from Orders;
```

## Output

| final_payment |
|---|
| 1000 |
| -50 |
| 2000 |
| 0 |
| 1400 |
| 0 |
| 3000 |
| -200 |

---

# Query 24

## Question

Find employees where salary is NULL but manager exists

## Query

```sql
select name
from Employees
where salary is null
and manager_id is not null;
```

## Output

| name |
|---|
| John |
| David |

---
---
