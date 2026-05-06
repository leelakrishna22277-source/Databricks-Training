# Day 1 SQL Queries and Outputs

## **Basic Queries**

### **1.**

**Query:**

```sql
select * from Employee;
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 | null          | 2021-07-10 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---

### **2.**

**Query:**

```sql
select name,salary from Employee;
```

**Output:**

| name        | salary  |
| ----------- | ------- |
| John Doe    | 50000.0 |
| Jane Smith  | 60000.0 |
| Bob Brown   | 80000.0 |
| Alice Blue  | 45000.0 |
| Charlie P.  | 50000.0 |
| David Green | 70000.0 |
| Eve Black   | 55000.0 |
| Frank White | 48000.0 |
| Grace Kelly | 65000.0 |
| Hannah Lee  | 53000.0 |

---

### **3.**

**Query:**

```sql
select * from Employee where age>30;
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 | null          | 2021-07-10 |

---

### **4.**

**Query:**

```sql
select name from Department;
```

**Output:**

| name      |
| --------- |
| IT        |
| HR        |
| Finance   |
| Marketing |

---

### **5.**

**Query:**

```sql
select * from Employee where department_id=1;
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |

---

## **String Queries**

### **6.**

```sql
select * from Employee where name like 'J%';
```

**Output:**

| emp_id | name       | age | salary  | department_id | hire_date  |
| ------ | ---------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe   | 28  | 50000.0 | 1             | 2020-01-15 |
| 2      | Jane Smith | 34  | 60000.0 | 2             | 2019-07-23 |

---

### **7.**

```sql
select * from Employee where name like '%a%';
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 | null          | 2021-07-10 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---

### **8.**

```sql
select * from Employee where name like '%e';
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 | null          | 2021-07-10 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---

### **9.**

```sql
select * from Employee where length(name)=9;
```

**Output:**

| emp_id | name      | age | salary  | department_id | hire_date  |
| ------ | --------- | --- | ------- | ------------- | ---------- |
| 3      | Bob Brown | 45  | 80000.0 | 1             | 2018-02-12 |
| 7      | Eve Black | 40  | 55000.0 | 3             | 2021-08-30 |

---

### **10.**

```sql
select * from Employee where name like '_o%';
```

**Output:**

| emp_id | name      | age | salary  | department_id | hire_date  |
| ------ | --------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe  | 28  | 50000.0 | 1             | 2020-01-15 |
| 3      | Bob Brown | 45  | 80000.0 | 1             | 2018-02-12 |

---

## **Date Queries**

### **11.**

```sql
select * from Employee where year(hire_date)=2020;
```

**Output:**

| emp_id | name       | age | salary  | department_id | hire_date  |
| ------ | ---------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe   | 28  | 50000.0 | 1             | 2020-01-15 |
| 10     | Hannah Lee | 30  | 53000.0 | 4             | 2020-02-25 |

---

### **12.**

```sql
select * from Employee where month(hire_date)=1;
```

**Output:**

| emp_id | name     | age | salary  | department_id | hire_date  |
| ------ | -------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe | 28  | 50000.0 | 1             | 2020-01-15 |

---

### **13.**

```sql
select * from Employee where year(hire_date)<2019;
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |

---

### **14.**

```sql
select * from Employee where hire_date>='2021-03-01';
```

**Output:**

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 | null          | 2021-07-10 |

---

### **15.**

```sql
select * from Employee where hire_date=Date_Sub(current_date,interval 2 year);
```

**Output:**
No rows returned.

---

## **Aggregate Queries**

### **16.**

```sql
select sum(salary) from Employee;
```

**Output:**

| sum(salary) |
| ----------- |
| 576000.0    |

---

### **17.**

```sql
select avg(salary) from Employee;
```

**Output:**

| avg(salary) |
| ----------- |
| 57600.0     |

---

### **18.**

```sql
select min(salary) from Employee;
```

**Output:**

| min(salary) |
| ----------- |
| 45000.0     |

---

### **19.**

```sql
select e.department_id, d.name, count(*)
from Employee e
join Department d
on e.department_id = d.department_id
group by e.department_id, d.name;
```

**Output:**

| department_id | name      | count(*) |
| ------------- | --------- | -------- |
| 1             | IT        | 3        |
| 2             | HR        | 2        |
| 3             | Finance   | 2        |
| 4             | Marketing | 2        |

---

### **20.**

```sql
select e.department_id, d.name, avg(salary)
from Employee e
join Department d
on e.department_id = d.department_id
group by e.department_id, d.name;
```

**Output:**

| department_id | name      | avg(salary) |
| ------------- | --------- | ----------- |
| 1             | IT        | 65000.0     |
| 2             | HR        | 55000.0     |
| 3             | Finance   | 50000.0     |
| 4             | Marketing | 61500.0     |

---

## **Group By Queries**

### **21.**

```sql
select e.department_id,d.name,sum(salary)
from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name;
```

**Output:**

| department_id | name      | sum(salary) |
| ------------- | --------- | ----------- |
| 1             | IT        | 195000.0    |
| 2             | HR        | 110000.0    |
| 3             | Finance   | 100000.0    |
| 4             | Marketing | 123000.0    |

---

### **22.**

```sql
select e.department_id,d.name,avg(salary)
from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name;
```

**Output:**

| department_id | name      | avg(salary) |
| ------------- | --------- | ----------- |
| 1             | IT        | 65000.0     |
| 2             | HR        | 55000.0     |
| 3             | Finance   | 50000.0     |
| 4             | Marketing | 61500.0     |

---

### **23.**

```sql
select year(hire_date),count(*) from Employee group by year(hire_date);
```

**Output:**

| year(hire_date) | count(*) |
| --------------- | -------- |
| 2018            | 2        |
| 2019            | 2        |
| 2020            | 2        |
| 2021            | 3        |

---

### **24.**

```sql
select e.department_id,d.name,max(salary)
from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name;
```

**Output:**

| department_id | name      | max(salary) |
| ------------- | --------- | ----------- |
| 1             | IT        | 80000.0     |
| 2             | HR        | 60000.0     |
| 3             | Finance   | 55000.0     |
| 4             | Marketing | 70000.0     |

---

### **25.**

```sql
select e.department_id, d.name, avg(salary) as avg_salary
from Employee e
join Department d
on e.department_id = d.department_id
group by e.department_id, d.name
order by avg_salary desc
limit 1;
```

**Output:**

| department_id | name | avg_salary |
| ------------- | ---- | ---------- |
| 1             | IT   | 65000.0    |

---
