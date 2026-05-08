# 📘 Employee SQL Practice Queries

## 🚀 SELECT QUERIES

### 🔹 1. Display all employee details

```sql
select *from Employees;
```

---

### 🔹 2. Display only employee names and salaries

```sql
select emp_name,salary from Employees;
```

---

### 🔹 3. Display employee names and departments

```sql
select emp_name,department from Employees;
```

---

### 🔹 4. Display all employees from the IT department

```sql
select * from Employees where department="IT";
```

---

### 🔹 5. Display employee names and experience

```sql
select emp_name,experience from Employees;
```

---

# 📌 WHERE CONDITION QUERIES

### 🔹 6. Find employees with salary greater than 70000

```sql
select *from Employees where salary>70000;
```

---

### 🔹 7. Find employees working in Hyderabad

```sql
select *from Employees where city='Hyderabad';
```

---

### 🔹 8. Find employees with experience less than 4 years

```sql
select *from Employees where experience<4;
```

---

### 🔹 9. Find employees from Finance department

```sql
select *from Employees where department='Finance';
```

---

### 🔹 10. Find employees whose salary is equal to 52000

```sql
select *from Employees where salary=52000;
```

---

# 📊 GROUP BY QUERIES

### 🔹 11. Find total salary department-wise

```sql
select department,sum(salary) from Employees group by department;
```

---

### 🔹 12. Find average salary in each department

```sql
select department,avg(salary) from Employees group by department;
```

---

### 🔹 13. Count employees in each city

```sql
select city,count(*) from Employees group by city;
```

---

### 🔹 14. Find maximum salary in each department

```sql
select department,max(salary) from Employees group by department;
```

---

### 🔹 15. Find minimum salary department-wise

```sql
select department,min(salary) from Employees group by department;
```

---

# 🎯 HAVING QUERIES

### 🔹 16. Find departments having more than 3 employees

```sql
select department,count(*) as count_emp
from Employees
group by department
having count_emp>3;
```

---

### 🔹 17. Find departments where average salary is greater than 60000

```sql
select department,avg(salary) as avg_salary
from Employees
group by department
having avg_salary>60000;
```

---

### 🔹 18. Find cities having more than 2 employees

```sql
select city,count(*) as emp_count
from Employees
group by city
having emp_count>2;
```

---

### 🔹 19. Find departments where total salary is greater than 200000

```sql
select department,sum(salary) as sum_salary
from Employees
group by department
having sum_salary>200000;
```

---

### 🔹 20. Find departments where maximum salary is above 90000

```sql
select department,max(salary) as max_salary
from Employees
group by department
having max_salary>90000;
```

---

# 🏆 TOP / LIMIT QUERIES

### 🔹 21. Display top 5 highest paid employees

```sql
select *from Employees
order by salary desc
limit 5;
```

---

### 🔹 22. Display top 3 employees with highest experience

```sql
select *from Employees
order by experience desc
limit 3;
```

---

### 🔹 23. Display top 2 salaries from Finance department

```sql
select *from Employees
where department='Finance'
order by salary desc
limit 2;
```

---

### 🔹 24. Display top 4 employees from Hyderabad

```sql
select *from Employees
where city='Hyderabad'
limit 4;
```

---

### 🔹 25. Display top 1 highest salary employee

```sql
select *from Employees
order by salary desc
limit 1;
```

---

# 🌟 DISTINCT QUERIES

### 🔹 26. Display distinct department names

```sql
select distinct department from Employees;
```

---

### 🔹 27. Display distinct city names

```sql
select distinct city from Employees;
```

---

### 🔹 28. Display distinct salary values

```sql
select distinct salary from Employees;
```

---

### 🔹 29. Display distinct combinations of department and city

```sql
select distinct department,city from Employees;
```

---

### 🔹 30. Display distinct experience values

```sql
select distinct experience from Employees;
```

---

# ⚡ COMPARISON OPERATORS

### 🔹 31. Find employees with salary >= 80000

```sql
select *from Employees where salary>=80000;
```

---

### 🔹 32. Find employees with experience <= 3

```sql
select *from Employees where experience<=3;
```

---

### 🔹 33. Find employees whose salary is not equal to 45000

```sql
select *from Employees where salary<>45000;
```

---

### 🔹 34. Find employees with salary < 50000

```sql
select *from Employees where salary<50000;
```

---

### 🔹 35. Find employees with experience > 5

```sql
select *from Employees where experience>5;
```

---

# 🔗 LOGICAL OPERATORS

### 🔹 36. Find employees from IT department AND salary greater than 70000

```sql
select *from Employees
where department='IT' and salary>70000;
```

---

### 🔹 37. Find employees from Hyderabad OR Bangalore

```sql
select *from Employees
where city='Hyderabad' or city='Bangalore';
```

---

### 🔹 38. Find employees from HR department AND experience less than 3

```sql
select *from Employees
where department='HR' and experience<3;
```

---

### 🔹 39. Find employees with salary greater than 60000 OR experience greater than 6

```sql
select *from Employees
where salary>60000 or experience>6;
```

---

### 🔹 40. Find employees NOT from Sales department

```sql
select *from Employees
where department<>'Sales';
```

---

# 📍 IN AND NOT IN

### 🔹 41. Find employees working in Hyderabad or Bangalore

```sql
select *from Employees
where city in ('Hyderabad','Bangalore');
```

---

### 🔹 42. Find employees whose department is IT or Finance

```sql
select *from Employees
where department in ('IT','Finance');
```

---

### 🔹 43. Find employees whose city is NOT Chennai or Pune

```sql
select *from Employees
where city not in ('Chennai','Pune');
```

---

### 🔹 44. Find employees whose salary is 45000, 75000, or 91000

```sql
select *from Employees
where salary in (45000,75000,91000);
```

---

### 🔹 45. Find employees whose department is NOT HR or Sales

```sql
select *from Employees
where department not in ('HR','Sales');
```

---

# 📌 BETWEEN QUERIES

### 🔹 46. Find employees with salary BETWEEN 50000 AND 80000

```sql
select *from Employees
where salary between 50000 and 80000;
```

---

### 🔹 47. Find employees with experience BETWEEN 3 AND 6

```sql
select *from Employees
where experience between 3 and 6;
```

---

### 🔹 48. Find employees whose emp_id BETWEEN 105 AND 112

```sql
select *from Employees
where emp_id between 105 and 112;
```

---

### 🔹 49. Find employees with salary NOT BETWEEN 40000 AND 60000

```sql
select *from Employees
where salary not between 40000 and 60000;
```

---

### 🔹 50. Find employees with experience BETWEEN 2 AND 4

```sql
select *from Employees
where experience between 2 and 4;
```

---

# 🔍 LIKE OPERATOR

### 🔹 51. Find employees whose names start with 'R'

```sql
select *from Employees
where emp_name like 'R%';
```

---

### 🔹 52. Find employees whose names end with 'a'

```sql
select *from Employees
where emp_name like '%a';
```

---

### 🔹 53. Find employees whose names contain 'v'

```sql
select *from Employees
where emp_name like '%v%';
```

---

### 🔹 54. Find employees whose city starts with 'B'

```sql
select *from Employees
where city like 'B%';
```

---

### 🔹 55. Find employees whose department ends with 's'

```sql
select *from Employees
where department like '%s';
```

---
