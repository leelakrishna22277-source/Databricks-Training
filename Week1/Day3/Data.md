# 📘 Week 1 Day 3 SQL Learning

## 🚀 Topics Covered

1. SQL EXISTS  
2. SQL Wildcards  
3. SQL DISTINCT  
4. SELECT TOP / LIMIT  
5. SQL LIKE  
6. SQL Alias  
7. INNER JOIN  
8. LEFT JOIN  
9. OUTER JOIN  
10. SQL Nested Queries  

---

# 1️⃣ SQL EXISTS

## 🔹 Definition
The EXISTS operator checks whether a subquery returns any records.

## 🔹 Syntax

```sql
SELECT column_name
FROM table_name
WHERE EXISTS (
    SELECT column_name
    FROM table_name
    WHERE condition
);
```

## 🔹 Example

```sql
SELECT name
FROM Employee e
WHERE EXISTS (
    SELECT *
    FROM Department d
    WHERE e.department_id = d.department_id
);
```

## 🔹 Explanation
- EXISTS returns TRUE if the subquery returns rows
- Used with correlated subqueries
- Helps in checking related records

---

# 2️⃣ SQL Wildcards

## 🔹 Definition
Wildcards are special characters used with LIKE operator for pattern matching.

## 🔹 Wildcards Used
- `%` → Represents multiple characters
- `_` → Represents a single character

## 🔹 Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;
```

## 🔹 Example

```sql
SELECT *
FROM Employee
WHERE name LIKE 'J%';
```

## 🔹 Explanation
- `J%` finds names starting with J
- `%a%` finds names containing a
- `_o%` finds names where second letter is o

---

# 3️⃣ SQL DISTINCT

## 🔹 Definition
DISTINCT removes duplicate values from output.

## 🔹 Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

## 🔹 Example

```sql
SELECT DISTINCT department_id
FROM Employee;
```

## 🔹 Explanation
- Returns only unique department IDs
- Avoids duplicate records

---

# 4️⃣ SELECT TOP / LIMIT

## 🔹 Definition
LIMIT is used to fetch limited rows from a table.

## 🔹 Syntax

```sql
SELECT *
FROM table_name
LIMIT number;
```

## 🔹 Example

```sql
SELECT *
FROM Employee
LIMIT 5;
```

## 🔹 Explanation
- Retrieves first 5 rows
- Useful for previewing records

---

# 5️⃣ SQL LIKE

## 🔹 Definition
LIKE is used for pattern searching in SQL.

## 🔹 Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name LIKE pattern;
```

## 🔹 Example

```sql
SELECT *
FROM Employee
WHERE name LIKE '%a%';
```

## 🔹 Explanation
- `%a%` searches names containing letter a
- Commonly used for text filtering

---

# 6️⃣ SQL Alias

## 🔹 Definition
Alias provides temporary names to columns or tables.

## 🔹 Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

## 🔹 Example

```sql
SELECT salary AS Employee_Salary
FROM Employee;
```

## 🔹 Explanation
- Makes output more readable
- Useful in reports and joins

---

# 7️⃣ INNER JOIN

## 🔹 Definition
INNER JOIN returns matching records from both tables.

## 🔹 Syntax

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```

## 🔹 Example

```sql
SELECT e.name, d.name
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;
```

## 🔹 Explanation
- Returns only matched department records
- Excludes NULL unmatched rows

---

# 8️⃣ LEFT JOIN

## 🔹 Definition
LEFT JOIN returns all rows from left table and matching rows from right table.

## 🔹 Syntax

```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```

## 🔹 Example

```sql
SELECT e.name, d.name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;
```

## 🔹 Explanation
- Includes all employees
- Shows NULL for unmatched departments

---

# 9️⃣ OUTER JOIN

## 🔹 Definition
OUTER JOIN returns matching and non-matching rows from tables.

## 🔹 Syntax

```sql
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.column = table2.column;
```

## 🔹 Example

```sql
SELECT e.name, d.name
FROM Employee e
FULL OUTER JOIN Department d
ON e.department_id = d.department_id;
```

## 🔹 Explanation
- Includes all matched and unmatched records
- Useful for full data comparison

---

# 🔟 SQL Nested Queries

## 🔹 Definition
A nested query is a query written inside another query.

## 🔹 Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name IN (
    SELECT column_name
    FROM table_name
);
```

## 🔹 Example

```sql
SELECT name
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);
```

## 🔹 Explanation
- Inner query calculates average salary
- Outer query filters employees above average salary

---

# 💡 Key Takeaways

- EXISTS helps check related records
- Wildcards improve pattern searching
- DISTINCT removes duplicate values
- LIMIT helps fetch required rows
- LIKE is useful for text filtering
- Aliases improve readability
- Joins combine related tables
- Nested queries simplify complex filtering

---

# 📌 Conclusion

By the end of Day 3, I gained a strong understanding of advanced SQL concepts including joins, aliases, wildcards, EXISTS, and nested queries. These concepts are essential for writing efficient real-world SQL queries.
