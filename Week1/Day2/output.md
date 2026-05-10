
# Day 2 SQL Queries and Outputs (26–65)

## **Having Queries**

### **26.**
```sql
select e.department_id,count(*),d.name from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name
having count(d.department_id)>2;
```
**Output:**
| department_id | count(*) | name |
|--------------|----------|------|
| 1            | 3        | IT   |

---

### **27.**
```sql
select e.department_id,avg(e.salary) as avg_salary,d.name from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name
having avg_salary>55000;
```
**Output:**
| department_id | avg_salary | name      |
|--------------|------------|-----------|
| 1            | 65000.0    | IT        |
| 4            | 61500.0    | Marketing |

---

### **28.**
```sql
select year(hire_date),count(*) from Employee 
group by year(hire_date)
having count(hire_date)>1;
```
**Output:**
| year(hire_date) | count(*) |
|-----------------|----------|
| 2018            | 2        |
| 2019            | 2        |
| 2020            | 2        |
| 2021            | 3        |

---

### **29.**
```sql
select e.department_id,sum(e.salary) as sum_salary,d.name from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name
having sum_salary<100000;
```
**Output:**
No rows returned.

---

### **30.**
```sql
select e.department_id,max(e.salary) as max_salary,d.name from Employee e
join Department d
on e.department_id=d.department_id
group by e.department_id,d.name
having max_salary>75000;
```
**Output:**
| department_id | max_salary | name |
|--------------|------------|------|
| 1            | 80000.0    | IT   |

---

## **Order By Queries**

### **31.**
```sql
select name,salary from Employee order by salary asc;
```
**Output:**
| name        | salary  |
|------------|---------|
| Alice Blue | 45000.0 |
| Frank White| 48000.0 |
| John Doe   | 50000.0 |
| Charlie P. | 50000.0 |
| Hannah Lee | 53000.0 |
| Eve Black  | 55000.0 |
| Jane Smith | 60000.0 |
| Grace Kelly| 65000.0 |
| David Green| 70000.0 |
| Bob Brown  | 80000.0 |

---

### **32.**
```sql
select name,age from Employee order by age desc;
```
**Output:**
| name        | age |
|------------|-----|
| Bob Brown  | 45  |
| Eve Black  | 40  |
| David Green| 38  |
| Jane Smith | 34  |
| Frank White| 32  |
| Hannah Lee | 30  |
| Charlie P. | 29  |
| John Doe   | 28  |
| Grace Kelly| 27  |
| Alice Blue | 25  |

---

### **33.**
```sql
select name,hire_date from Employee order by hire_date asc;
```
**Output:**
| name        | hire_date  |
|------------|------------|
| Bob Brown  | 2018-02-12 |
| Grace Kelly| 2018-11-13 |
| Jane Smith | 2019-07-23 |
| Charlie P. | 2019-12-01 |
| John Doe   | 2020-01-15 |
| Hannah Lee | 2020-02-25 |
| Alice Blue | 2021-03-22 |
| Frank White| 2021-07-10 |
| Eve Black  | 2021-08-30 |
| David Green| 2022-05-18 |

---

### **34.**
```sql
select name,department_id,salary from Employee order by department_id,salary;
```
**Output:**
| name        | department_id | salary  |
|------------|---------------|---------|
| Frank White| null          | 48000.0 |
| John Doe   | 1             | 50000.0 |
| Grace Kelly| 1             | 65000.0 |
| Bob Brown  | 1             | 80000.0 |
| Charlie P. | 2             | 50000.0 |
| Jane Smith | 2             | 60000.0 |
| Alice Blue | 3             | 45000.0 |
| Eve Black  | 3             | 55000.0 |
| Hannah Lee | 4             | 53000.0 |
| David Green| 4             | 70000.0 |

---

### **35.**
```sql
select e.department_id,d.name,sum(e.salary) as sum_salary from Employee e
join Department d
on e.department_id=d.department_id
group by d.name,d.department_id
order by sum_salary;
```
**Output:**
| department_id | name      | sum_salary |
|--------------|-----------|------------|
| 3            | Finance   | 100000.0   |
| 2            | HR        | 110000.0   |
| 4            | Marketing | 123000.0   |
| 1            | IT        | 195000.0   |

---

## **Join Queries**

### **36.**
```sql
select e.name,d.name from Employee e
join Department d
on e.department_id=d.department_id;
```
**Output:**
| name        | name |
|------------|------|
| John Doe   | IT   |
| Bob Brown  | IT   |
| Grace Kelly| IT   |
| Jane Smith | HR   |
| Charlie P. | HR   |
| Alice Blue | Finance |
| Eve Black  | Finance |
| David Green| Marketing |
| Hannah Lee | Marketing |

---

### **37.**
```sql
select p.name,d.name from Project p
join Department d
on p.department_id=d.department_id;
```
**Output:**
| name           | name |
|---------------|------|
| Project Alpha | IT   |
| Project Gamma | IT   |
| Project Theta | IT   |
| Project Beta  | HR   |
| Project Delta | Finance |
| Project Eta   | Finance |
| Project Epsilon | Marketing |
| Project Zeta  | Marketing |

---

### **38.**
```sql
select e.name,p.name from Project p
join Employee e
on p.department_id=e.department_id;
```
**Output:** (multiple rows)

---

### **39.**
```sql
select e.name,d.name from Employee e
left join Department d
on e.department_id=d.department_id;
```
**Output:** (includes NULL)

---

### **40.**
```sql
select e.name,d.name from Employee e
right join Department d
on e.department_id=d.department_id;
```
**Output:** (right join result)

---

### **41.**
```sql
select e.name from Employee e
join Project p
on e.department_id=p.department_id
where p.project_id =NUll;
```
**Output:**
No rows returned.

---

### **42.**
```sql
select e.name, count(p.project_id) as project_count
from Employee e
join Project p
on e.department_id = p.department_id
group by e.name;
```
**Output:** (counts per employee)

---

### **43.**
```sql
select d.name
from Department d
join Employee e
on e.department_id = d.department_id
where d.department_id =NUll;
```
**Output:**
No rows returned.

---

### **44.**
```sql
select e2.name
from Employee e1
join Employee e2
on e1.department_id = e2.department_id
where e1.name = 'John Doe'
and e2.name <> 'John Doe';
```
**Output:**
| name        |
|------------|
| Bob Brown  |
| Grace Kelly|

---

### **45.**
```sql
select d.name, avg(e.salary) as avg_salary
from Employee e
join Department d
on e.department_id = d.department_id
group by d.name
order by avg_salary desc
limit 1;
```
**Output:**
| name | avg_salary |
|------|------------|
| IT   | 65000.0    |

# NESTED QUERIES

---

## Query 46

### Question:
Find employee with highest salary.

```sql
select name,salary 
from Employee1 
where salary=(
    select max(salary)  
    from Employee1
);
```

### Output:

```text
+-----------+----------+
| name      | salary   |
+-----------+----------+
| Bob Brown | 80000.00 |
+-----------+----------+
```

---

## Query 47

### Question:
Find employees whose salary is above average salary.

```sql
select * 
from Employee1 
where salary>(
    select avg(salary) 
    from Employee1
);
```

### Output:

```text
+--------+-------------+------+----------+---------------+------------+
| emp_id | name        | age  | salary   | department_id | hire_date  |
+--------+-------------+------+----------+---------------+------------+
|      2 | Jane Smith  |   34 | 60000.00 |             2 | 2019-07-23 |
|      3 | Bob Brown   |   45 | 80000.00 |             1 | 2018-02-12 |
|      6 | David Green |   38 | 70000.00 |             4 | 2022-05-18 |
|      9 | Grace Kelly |   27 | 65000.00 |             1 | 2018-11-13 |
+--------+-------------+------+----------+---------------+------------+
```

---

## Query 48

### Question:
Find employee with second highest salary.

```sql
select name,salary 
from Employee1 
where salary<(
    select max(salary)  
    from Employee1
) 
order by salary desc 
limit 1;
```

### Output:

```text
+-------------+----------+
| name        | salary   |
+-------------+----------+
| David Green | 70000.00 |
+-------------+----------+
```

---

## Query 49

### Question:
Find department with the most employees.

```sql
select d.name,count(*) 
from Department d 
join Employee1 e 
on e.department_id=d.department_id
group by d.name
having count(*)>=All(
    select count(*) 
    from Employee1
    group by department_id
);
```

### Output:

```text
+------+----------+
| name | count(*) |
+------+----------+
| IT   |        3 |
+------+----------+
```

---

## Query 50

### Question:
Find employees earning more than their department average salary.

```sql
select e.name,
       d.name,
(
     select avg(e2.salary)
     from Employee1 e2
     where e2.department_id=e.department_id
) as avgDepsal,
e.salary
from Employee1 e 
join Department d 
on e.department_id=d.department_id
where e.salary>(
     select avg(e2.salary)
     from Employee1 e2
     where e2.department_id=e.department_id
);
```

### Output:

```text
+-------------+-----------+--------------+----------+
| name        | name      | avgDepsal    | salary   |
+-------------+-----------+--------------+----------+
| Bob Brown   | IT        | 65000.000000 | 80000.00 |
| Jane Smith  | HR        | 55000.000000 | 60000.00 |
| Eve Black   | Finance   | 50000.000000 | 55000.00 |
| David Green | Marketing | 61500.000000 | 70000.00 |
+-------------+-----------+--------------+----------+
```

---

## Query 51

### Question:
Find the 3rd highest salary employee.

```sql
select e.name,e.salary
from Employee1 e 
where e.salary=
(
      select distinct e2.salary 
      from Employee1 e2
      order by e2.salary desc 
      limit 1 offset 2 
);
```

### Output:

```text
+-------------+----------+
| name        | salary   |
+-------------+----------+
| Grace Kelly | 65000.00 |
+-------------+----------+
```

---

## Query 52

### Question:
Find employees older than all HR employees.

```sql
Select e.name,e.age 
from Employee1 e
where e.age >all
(
  select e2.age 
  from Employee1 e2
  join Department d 
  on e2.department_id=d.department_id
  where d.name='HR'
);
```

### Output:

```text
+-------------+------+
| name        | age  |
+-------------+------+
| Bob Brown   |   45 |
| David Green |   38 |
| Eve Black   |   40 |
+-------------+------+
```

---

## Query 53

### Question:
Find departments where average salary is greater than 55000.

```sql
select *
from (
    select d.name,
           AVG(e.salary) as avg_salary
    from Employee1 e
    join Department d
    on e.department_id = d.department_id
    group by d.name
) dept_avg
where avg_salary > 55000;
```

### Output:

```text
+-----------+--------------+
| name      | avg_salary   |
+-----------+--------------+
| IT        | 65000.000000 |
| Marketing | 61500.000000 |
+-----------+--------------+
```

---

## Query 54

### Question:
Find employees working in departments having at least 2 projects.

```sql
select *
from (
    select e.name,
           count(*) as totalproject_count
    from Employee1 e 
    join Project p 
    on e.department_id=p.department_id
    group by e.name
) emp_proj_count
where totalproject_count>=2;
```

### Output:

```text
+-------------+--------------------+
| name        | totalproject_count |
+-------------+--------------------+
| John Doe    |                  3 |
| Bob Brown   |                  3 |
| Grace Kelly |                  3 |
| Alice Blue  |                  2 |
| Eve Black   |                  2 |
| David Green |                  2 |
| Hannah Lee  |                  2 |
+-------------+--------------------+
```

---

## Query 55

### Question:
Find employees hired on the same date as Jane Smith.

```sql
select e2.name 
from Employee1 e2
join Employee1 e1 
on e2.hire_date=e1.hire_date
where e1.name='Jane Smith'
and e2.name <> 'Jane Smith';
```

### Output:

```text
No rows returned.
```
# ADVANCED MODERATE DIFFICULTY QUERIES


---

# Query 56
## Question:
Select the total salary of employees hired in the year 2020.

```sql
select year(hire_date) as year_hired,sum(salary)
from Employee1
group by year_hired
having year_hired=2020;
```

## Output:

| year_hired | sum(salary) |
|------------|-------------|
| 2020 | 103000.00 |

---

# Query 57
## Question:
Select the average salary of employees in each department, ordered by the average salary in descending order.

```sql
select d.name,avg(e.salary) as avg_sal
from Employee1 e
join Department d
on e.department_id=d.department_id
group by d.name
order by avg_sal desc;
```

## Output:

| name | avg_sal |
|------|--------------|
| IT | 65000.000000 |
| Marketing | 61500.000000 |
| HR | 55000.000000 |
| Finance | 50000.000000 |

---

# Query 58
## Question:
Select departments with more than 1 employee.

```sql
select d.name,count(*)
from Employee1 e
join Department d
on e.department_id=d.department_id
group by d.name
having count(*)>1;
```

## Output:

| name | count(*) |
|------|----------|
| IT | 3 |
| HR | 2 |
| Finance | 2 |
| Marketing | 2 |

---

# Query 59
## Question:
Select employees hired in the last 2 years, ordered by their hire date.

```sql
select name,hire_date
from Employee1
where hire_date=Date_sub(current_Date,interval 2 year)
order by hire_date;
```

## Output:

_No rows returned._

---

# Query 60
## Question:
Select the total number of employees and average salary for departments with more than 2 employees.

```sql
select d.name,count(*) as emp_count,avg(e.salary)
from Employee1 e
join Department d
on e.department_id=d.department_id
group by d.name
having emp_count>2;
```

## Output:

| name | emp_count | avg(e.salary) |
|------|-----------|---------------|
| IT | 3 | 65000.000000 |

---

# Query 61
## Question:
Select the name and salary of employees whose salary is above the average salary of their department.

```sql
select d.name,e.name,e.salary
from Employee1 e
join Department d
on e.department_id=d.department_id
where e.salary>
(
select avg(salary)
from Employee1
where department_id=e.department_id
);
```

## Output:

| name | name | salary |
|------|-------------|----------|
| IT | Bob Brown | 80000.00 |
| HR | Jane Smith | 60000.00 |
| Finance | Eve Black | 55000.00 |
| Marketing | David Green | 70000.00 |

---

# Query 62
## Question:
Select the names of employees who are hired on the same date as the oldest employee in the company.

```sql
select name,hire_date
from Employee1 e
where hire_date=
(
select min(hire_date)
from Employee1
);
```

## Output:

| name | hire_date |
|------|------------|
| Bob Brown | 2018-02-12 |

---

# Query 63
## Question:
Select the department names along with the total number of projects they are working on, ordered by the number of projects.

```sql
select d.name,count(*)
from Department d
join Project p
on d.department_id=p.department_id
group by d.name
order by count(*);
```

## Output:

| name | count(*) |
|------|----------|
| HR | 1 |
| Finance | 2 |
| Marketing | 2 |
| IT | 3 |

---

# Query 64
## Question:
Select the employee name with the highest salary in each department.

```sql
select d.name,e.name,e.salary
from Employee1 e
join Department d
on e.department_id=d.department_id
where e.salary=
(
select max(salary)
from Employee1
where department_id=e.department_id
);
```

## Output:

| name | name | salary |
|------|-------------|----------|
| IT | Bob Brown | 80000.00 |
| HR | Jane Smith | 60000.00 |
| Finance | Eve Black | 55000.00 |
| Marketing | David Green | 70000.00 |

---

# Query 65
## Question:
Select the names and salaries of employees who are older than the average age of employees in their department.

```sql
select e.name,e.salary,e.age
from Employee1 e
where age>
(
select avg(age)
from Employee1
where department_id=e.department_id
);
```

## Output:

| name | salary | age |
|-------------|----------|------|
| Jane Smith | 60000.00 | 34 |
| Bob Brown | 80000.00 | 45 |
| David Green | 70000.00 | 38 |
| Eve Black | 55000.00 | 40 |

---
