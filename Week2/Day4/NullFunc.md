# NULL Functions Practice

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

# NULL Functions Practice Questions

# LEVEL 1 — BASIC

1. Show all employees whose salary is NULL

2. Show all orders where discount is NOT NULL

3. Get products where category is NULL

4. Count number of employees with NULL manager_id

---

# LEVEL 2 — ISNULL

5. Replace NULL salary with 0

6. Replace NULL bonus with 1000

7. Show order amount, if NULL replace with 500

8. Replace NULL stock with 0

---

# LEVEL 3 — COALESCE

9. Show employee earnings using salary, if NULL use bonus

10. Show first available value:
salary → bonus → 0

11. Show product price:
price → 1000 (default)

12. Get customer payment:
amount → discount → 0

---

# LEVEL 4 — NULLIF

13. Convert salary to NULL if salary = 0

14. Convert discount to NULL if discount = 0

15. Use NULLIF to avoid divide by zero

16. Replace coupon_code with NULL if it is 'DISC10'

---

# LEVEL 5 — REAL-TIME SCENARIOS

17. Calculate total earnings:
salary + bonus (handle NULL properly)

18. Show employees where both salary AND bonus are NULL

19. Show products where price is NULL but category is NOT NULL

20. Show orders where both amount and discount are NULL

---

# LEVEL 6 — ADVANCED

21. Show employee income:
COALESCE(salary, bonus, 1000)

22. Replace empty discount with NULL using NULLIF

23. Show final payable amount:
amount - discount (handle NULL)

24. Find employees where salary is NULL but manager exists

---
