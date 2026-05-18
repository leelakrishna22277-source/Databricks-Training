# ROW_NUMBER() Window Function Practice 

---

## Dataset: Employees

```sql
select * from employees;
```

---

## Employees Table

| emp_id | emp_name | department | salary | join_date  |
|--------|----------|------------|--------|------------|
| 1 | Amit | Chennai | 2000 | 2023-01-01 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 |

---

# Q1
## Question  
Assign a unique row number to all employees based on salary (highest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
row_number() over(order by salary desc) as row_num
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num |
|--------|----------|------------|--------|------------|---------|
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 1 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 2 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 3 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 4 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 5 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 6 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 7 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 8 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 9 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 10 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 11 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 12 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 13 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 14 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 15 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 16 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 17 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 18 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 19 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 20 |

---

# Q2
## Question  
Assign row numbers within each department based on salary descending.

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
row_number() over(partition by department order by salary desc) as row_num
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num |
|--------|----------|------------|--------|------------|---------|
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 1 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 2 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 3 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 4 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 5 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 6 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 1 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 2 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 3 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 4 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 5 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 6 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 7 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 8 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 1 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 2 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 3 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 4 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 5 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 6 |

---

# Q3
## Question  
Assign row numbers based on joining date (latest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
row_number() over(order by join_date desc) as row_num
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num |
|--------|----------|------------|--------|------------|---------|
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 1 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 2 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 3 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 4 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 5 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 6 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 7 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 8 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 9 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 10 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 11 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 12 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 13 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 14 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 15 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 16 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 17 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 18 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 19 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 20 |

---

# Q4
## Question  
Assign row numbers based on earliest joining date.

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
row_number() over(order by join_date asc) as row_num
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num |
|--------|----------|------------|--------|------------|---------|
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 1 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 2 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 3 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 4 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 5 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 6 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 7 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 8 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 9 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 10 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 11 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 12 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 13 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 14 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 15 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 16 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 17 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 18 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 19 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 20 |

---

# Q5
## Question  
Assign row numbers based on salary (lowest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
row_number() over(order by salary asc) as row_num
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num |
|--------|----------|------------|--------|------------|---------|
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 1 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 2 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 3 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 4 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 5 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 6 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 7 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 8 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 9 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 10 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 11 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 12 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 13 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 14 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 15 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 16 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 17 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 18 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 19 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 20 |

---

# Q6
## Question  
Assign row numbers within department based on employee name alphabetically.

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
row_number() over(partition by department order by emp_name) as row_num
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num |
|--------|----------|------------|--------|------------|---------|
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 1 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 2 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 3 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 4 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 5 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 6 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 1 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 2 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 3 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 4 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 5 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 6 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 7 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 8 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 1 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 2 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 3 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 4 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 5 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 6 |

# RANK() Window Function Practice 


# Q7
## Question  
Rank all employees based on salary (highest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
rank() over(order by salary desc) as row_num7
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num7 |
|--------|----------|------------|--------|------------|----------|
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 1 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 1 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 3 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 4 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 5 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 5 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 7 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 7 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 9 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 10 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 11 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 12 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 13 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 13 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 13 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 16 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 17 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 18 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 19 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 20 |

---

# Q8
## Question  
Rank employees within each department based on salary.

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
rank() over(partition by department order by salary ) as row_num8
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num8 |
|--------|----------|------------|--------|------------|----------|
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 1 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 2 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 3 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 4 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 4 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 6 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 1 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 1 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 3 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 4 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 5 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 6 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 7 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 7 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 1 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 2 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 3 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 4 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 5 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 6 |

---

# Q9
## Question  
Rank employees based on joining date (latest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
rank() over(order by join_date desc ) as row_num9
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num9 |
|--------|----------|------------|--------|------------|----------|
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 1 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 2 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 3 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 4 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 5 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 6 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 7 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 8 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 9 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 10 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 11 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 12 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 13 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 14 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 15 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 16 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 17 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 18 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 19 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 20 |

---

# Q10
## Question  
Rank employees within department based on salary (lowest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
rank() over(partition by department order by salary asc) as row_num10
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num10 |
|--------|----------|------------|--------|------------|----------|
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 1 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 2 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 3 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 4 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 4 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 6 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 1 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 1 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 3 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 4 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 5 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 6 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 7 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 7 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 1 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 2 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 3 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 4 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 5 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 6 |

---

# Q11
## Question  
Rank employees based on name alphabetically.

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
rank() over(order by emp_name) as row_num11
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num11 |
|--------|----------|------------|--------|------------|----------|
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 1 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 2 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 3 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 4 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 5 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 6 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 7 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 8 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 9 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 10 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 11 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 12 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 13 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 14 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 15 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 16 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 17 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 18 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 19 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 20 |

# DENSE_RANK() Window Function Practice 

# Q12
## Question  
Assign dense rank to employees based on salary (highest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
dense_rank() over(order by salary desc) as row_num12
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num12 |
|--------|----------|------------|--------|------------|----------|
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 1 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 1 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 2 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 3 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 4 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 4 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 5 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 5 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 6 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 7 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 8 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 9 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 10 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 10 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 10 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 11 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 12 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 13 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 14 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 15 |

---

# Q13
## Question  
Assign dense rank within each department based on salary (highest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
dense_rank() over(partition by department order by salary desc) as row_num13
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num13 |
|--------|----------|------------|--------|------------|----------|
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 1 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 2 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 2 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 3 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 4 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 5 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 1 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 1 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 2 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 3 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 4 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 5 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 6 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 6 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 1 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 2 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 3 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 4 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 5 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 6 |

---

# Q14
## Question  
Assign dense rank based on joining date (oldest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
dense_rank() over(order by join_date) as row_num14
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num14 |
|--------|----------|------------|--------|------------|----------|
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 1 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 2 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 3 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 4 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 5 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 6 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 7 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 8 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 9 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 10 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 11 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 12 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 13 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 14 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 15 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 16 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 17 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 18 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 19 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 20 |

---

# Q15
## Question  
Assign dense rank based on salary (lowest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
dense_rank() over(order by salary asc) as row_num15
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num15 |
|--------|----------|------------|--------|------------|----------|
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 1 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 2 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 3 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 4 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 5 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 6 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 6 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 6 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 7 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 8 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 9 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 10 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 11 |
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 11 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 12 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 12 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 13 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 14 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 15 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 15 |

---

# Q16
## Question  
Assign dense rank within department based on joining date (latest first).

## Query
```sql
select emp_id,emp_name,department,salary,join_date,
dense_rank() over(partition by department order by join_date desc) as row_num16
from employees;
```

## Output

| emp_id | emp_name | department | salary | join_date | row_num16 |
|--------|----------|------------|--------|------------|----------|
| 19 | Deepak | Bangalore | 2500 | 2023-01-19 | 1 |
| 16 | Meena | Bangalore | 2300 | 2023-01-16 | 2 |
| 13 | Manoj | Bangalore | 2400 | 2023-01-13 | 3 |
| 10 | Rahul | Bangalore | 2600 | 2023-01-10 | 4 |
| 7 | Neha | Bangalore | 2200 | 2023-01-07 | 5 |
| 4 | Kiran | Bangalore | 2500 | 2023-01-04 | 6 |
| 20 | Nisha | Chennai | 2600 | 2023-01-20 | 1 |
| 17 | Raj | Chennai | 2700 | 2023-01-17 | 2 |
| 14 | Divya | Chennai | 2100 | 2023-01-14 | 3 |
| 11 | Suresh | Chennai | 2800 | 2023-01-11 | 4 |
| 8 | Vikas | Chennai | 3000 | 2023-01-08 | 5 |
| 5 | Priya | Chennai | 2000 | 2023-01-05 | 6 |
| 3 | Sneha | Chennai | 3000 | 2023-01-03 | 7 |
| 1 | Amit | Chennai | 2000 | 2023-01-01 | 8 |
| 18 | Simran | Hyderabad | 2000 | 2023-01-18 | 1 |
| 15 | Karthik | Hyderabad | 1900 | 2023-01-15 | 2 |
| 12 | Pooja | Hyderabad | 1600 | 2023-01-12 | 3 |
| 9 | Anjali | Hyderabad | 1700 | 2023-01-09 | 4 |
| 6 | Arjun | Hyderabad | 1800 | 2023-01-06 | 5 |
| 2 | Ravi | Hyderabad | 1500 | 2023-01-02 | 6 |

---
---
