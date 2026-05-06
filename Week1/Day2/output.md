
# Day 2 SQL Queries and Outputs (26–45)

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

