# SQL Join Practice Questions with Queries and Outputs



# Query 1

## Question

Retrieve the names of employees and their corresponding managers from the employees table, ensuring that even employees without managers are included.

## Query

```sql
select e.emp_name as employee,
       m.emp_name as manager
from employees e
left join employees m
ON e.manager_id = m.emp_id;
```

## Output

| employee | manager |
|---|---|
| Karthik | null |
| Ajay | Karthik |
| Vijay | Karthik |
| Vinay | Ajay |
| Meena | Vijay |
| Veer | null |
| Keerthi | Vinay |
| Priya | Vinay |

---

# Query 2

## Question

Display all employees and their corresponding departments from the employees and departments tables, showing employees even if they don't belong to any department.

## Query

```sql
select e.emp_name as employee,
 d.dept_name as dept
from employees e join departments d
on e.dept_id=d.dept_id;
```

## Output

| employee | dept |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |

---

# Query 3

## Question

List the names of employees who report to a manager, along with their manager's name, from the employees table.

## Query

```sql
select e.emp_name as employee,
       m.emp_name as manager
from employees e
inner join employees m
ON e.manager_id = m.emp_id;
```

## Output

| employee | manager |
|---|---|
| Ajay | Karthik |
| Vijay | Karthik |
| Vinay | Ajay |
| Meena | Vijay |
| Keerthi | Vinay |
| Priya | Vinay |

---

# Query 4

## Question

Find the total salary paid to each employee and their respective department, including departments with no employees.

## Query

```sql
select d.dept_name,
      count(e.emp_id) as total_employees
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_name;
```

## Output

| dept_name | total_employees |
|---|---|
| Marketing | 1 |
| Finance | 1 |
| Sales | 2 |
| IT | 2 |
| HR | 2 |

---

# Query 5

## Question

Display a list of employees who do not belong to any department, even if the department data is missing.

## Query

```sql
select e.emp_name
from employees e
left join departments d
on e.dept_id = d.dept_id
where d.dept_id is null;
```

## Output

| emp_name |
|---|
| There are no results to be displayed. |

---

# Query 6

## Question

Fetch the names of employees and the projects they are assigned to. For employees who are not assigned any projects, show NULL for the project.

## Query

```sql
select e.emp_name,p.project_name
from employees e
left join projects p
on e.emp_id=p.emp_id;
```

## Output

| emp_name | project_name |
|---|---|
| Karthik | Project A |
| Ajay | Project B |
| Vijay | Project C |
| Vinay | Project D |
| Meena | Project E |
| Priya | null |
| Veer | null |
| Keerthi | null |

---

# Query 7

## Question

List all employees who have completed at least one project, showing their names and the project names.

## Query

```sql
select e.emp_name,p.project_name
from employees e
inner join projects p
on e.emp_id=p.emp_id;
```

## Output

| emp_name | project_name |
|---|---|
| Karthik | Project A |
| Ajay | Project B |
| Vijay | Project C |
| Vinay | Project D |
| Meena | Project E |

---

# Query 8

## Question

Show the names of employees and their projects, ensuring that no project is omitted even if an employee is not assigned to it.

## Query

```sql
select e.emp_name,p.project_name
from employees e
right join projects p
on e.emp_id=p.emp_id;
```

## Output

| emp_name | project_name |
|---|---|
| Karthik | Project A |
| Ajay | Project B |
| Vijay | Project C |
| Vinay | Project D |
| Meena | Project E |

---

# Query 9

## Question

Find all employees and their corresponding salaries, and display NULL for salary if there is no salary record for the employee.

## Query

```sql
select emp_name,null as salary
from employees;
```

## Output

| emp_name | salary |
|---|---|
| Karthik | null |
| Ajay | null |
| Vijay | null |
| Vinay | null |
| Meena | null |
| Veer | null |
| Keerthi | null |
| Priya | null |

---

# Query 10

## Question

Retrieve the names of employees and their corresponding department names, including employees who are not in any department.

## Query

```sql
select e.emp_name,d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id;
```

## Output

| emp_name | dept_name |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |

---

# Query 11

## Question

Find the names of all departments and employees, ensuring that departments with no employees are included.

## Query

```sql
select d.dept_name,e.emp_name
from employees e
right join departments d
on e.dept_id=d.dept_id;
```

## Output

| dept_name | emp_name |
|---|---|
| HR | Karthik |
| HR | Ajay |
| IT | Vijay |
| IT | Vinay |
| Finance | Meena |
| Marketing | Veer |
| Sales | Keerthi |
| Sales | Priya |

---

# Query 12

## Question

List all employees with their contact information, including employees without contact records.

## Query

```sql
select emp_name,null as contact_info
from employees;
```

## Output

| emp_name | contact_info |
|---|---|
| Karthik | null |
| Ajay | null |
| Vijay | null |
| Vinay | null |
| Meena | null |
| Veer | null |
| Keerthi | null |
| Priya | null |

---

# Query 13

## Question

Show the names of employees and their department names, including employees not assigned to any department and departments without employees.

## Query

```sql
SELECT e.emp_name,
       d.dept_name
FROM employees e
FULL OUTER JOIN departments d
ON e.dept_id = d.dept_id;
```

## Output

| emp_name | dept_name |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |

---

# Query 14

## Question

Find employees who have not completed any project, along with the project details where applicable.

## Query

```sql
select e.emp_name,p.project_name
from employees e
left join projects p
on e.emp_id=p.emp_id
where project_id is null;
```

## Output

| emp_name | project_name |
|---|---|
| Priya | null |
| Veer | null |
| Keerthi | null |

---

# Query 15

## Question

Retrieve the names of employees and the names of their projects, including employees who are not working on any project.

## Query

```sql
select e.emp_name,p.project_name
from employees e
left join projects p
on e.emp_id=p.emp_id;
```

## Output

| emp_name | project_name |
|---|---|
| Karthik | Project A |
| Ajay | Project B |
| Vijay | Project C |
| Vinay | Project D |
| Meena | Project E |
| Priya | null |
| Veer | null |
| Keerthi | null |

---

# Query 16

## Question

List all projects and the employees assigned to them, even for projects that have no employees.

## Query

```sql
select p.project_name,e.emp_name
from employees e
right join projects p
on e.emp_id=p.emp_id;
```

## Output

| project_name | emp_name |
|---|---|
| Project A | Karthik |
| Project B | Ajay |
| Project C | Vijay |
| Project D | Vinay |
| Project E | Meena |

---

# Query 17

## Question

Show the names of all employees who have both a manager and at least one project, listing the manager's name as well.

## Query

```sql
select e.emp_name as employee,
       m.emp_name as manager,
       p.project_name as project
from employees e
inner join employees m
on m.emp_id=e.manager_id
inner join projects p
on e.emp_id=p.emp_id;
```

## Output

| employee | manager | project |
|---|---|---|
| Ajay | Karthik | Project B |
| Vijay | Karthik | Project C |
| Vinay | Ajay | Project D |
| Meena | Vijay | Project E |

---

# Query 18

## Question

List the names of employees and the corresponding department names, but exclude those employees who don't belong to a department.

## Query

```sql
select e.emp_name,d.dept_name
from employees e
inner join departments d
on e.dept_id=d.dept_id;
```

## Output

| emp_name | dept_name |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |




# Query 19

## Question

Display employees who belong to multiple departments, showing the employee's name and the department names.

## Query

```sql
select e.emp_name,
       d.dept_name
from employees e
join departments d
on e.dept_id = d.dept_id;
```

## Output

| emp_name | dept_name |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |

---

# Query 20

## Question

List the names of all departments and employees, ensuring that even if a department has no employees, it is included in the result.

## Query

```sql
select d.dept_name,
       e.emp_name
from departments d
left join employees e
on d.dept_id = e.dept_id;
```

## Output

| dept_name | emp_name |
|---|---|
| HR | Karthik |
| HR | Ajay |
| IT | Vijay |
| IT | Vinay |
| Finance | Meena |
| Marketing | Veer |
| Sales | Keerthi |
| Sales | Priya |

---

# Query 21

## Question

Retrieve employees who have worked on at least one project and do not belong to a department, listing their name and project details.

## Query

```sql
select e.emp_name,
       p.project_name
from employees e
inner join projects p
on e.emp_id = p.emp_id
where e.dept_id is null;
```

## Output

| emp_name | project_name |
|---|---|
| There are no results to be displayed. |

---

# Query 22

## Question

Find the total number of employees who belong to a department, ensuring the departments with no employees are still included.

## Query

```sql
select d.dept_name,
       count(e.emp_id) as total_employees
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_name;
```

## Output

| dept_name | total_employees |
|---|---|
| Marketing | 1 |
| Finance | 1 |
| Sales | 2 |
| IT | 2 |
| HR | 2 |

---

# Query 23

## Question

Show the employees and their managers, displaying only those employees who report to a manager, excluding employees without managers.

## Query

```sql
select e.emp_name as employee_name,
       m.emp_name as manager_name
from employees e
inner join employees m
on e.manager_id = m.emp_id;
```

## Output

| employee_name | manager_name |
|---|---|
| Ajay | Karthik |
| Vijay | Karthik |
| Vinay | Ajay |
| Meena | Vijay |
| Keerthi | Vinay |
| Priya | Vinay |

---

# Query 24

## Question

Display all employee names along with their corresponding managers' names, but include employees who do not have managers.

## Query

```sql
select e.emp_name as employee_name,
       m.emp_name as manager_name
from employees e
left join employees m
on e.manager_id = m.emp_id;
```

## Output

| employee_name | manager_name |
|---|---|
| Karthik | null |
| Ajay | Karthik |
| Vijay | Karthik |
| Vinay | Ajay |
| Meena | Vijay |
| Veer | null |
| Keerthi | Vinay |
| Priya | Vinay |

---

# Query 25

## Question

Find the names of departments and the number of employees in each department, including departments that have no employees.

## Query

```sql
select d.dept_name,
       count(e.emp_id) as employee_count
from departments d
left join employees e
on d.dept_id = e.dept_id
group by d.dept_name;
```

## Output

| dept_name | employee_count |
|---|---|
| Marketing | 1 |
| Finance | 1 |
| Sales | 2 |
| IT | 2 |
| HR | 2 |

---

# Query 26

## Question

List all employees and the departments they belong to, ensuring that departments with no employees are also listed.

## Query

```sql
select e.emp_name,
       d.dept_name
from departments d
left join employees e
on d.dept_id = e.dept_id;
```

## Output

| emp_name | dept_name |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |

---

# Query 27

## Question

Show a list of employees who do not have any corresponding salary records, along with their names.

## Query

```sql
select e.emp_name
from employees e
where e.emp_id not in (
    select emp_id
    from projects
);
```

## Output

| emp_name |
|---|
| Veer |
| Keerthi |
| Priya |

---

# Query 28

## Question

Retrieve the names of employees and their project assignments, including employees who are not assigned to any projects.

## Query

```sql
select e.emp_name,
       p.project_name
from employees e
left join projects p
on e.emp_id = p.emp_id;
```

## Output

| emp_name | project_name |
|---|---|
| Karthik | Project A |
| Ajay | Project B |
| Vijay | Project C |
| Vinay | Project D |
| Meena | Project E |
| Priya | null |
| Veer | null |
| Keerthi | null |

---

# Query 29

## Question

List the names of all employees and their respective department and project assignments, including employees who are not assigned to a project or department.

## Query

```sql
select e.emp_name,
       d.dept_name,
       p.project_name
from employees e
left join departments d
on e.dept_id = d.dept_id
left join projects p
on e.emp_id = p.emp_id;
```

## Output

| emp_name | dept_name | project_name |
|---|---|---|
| Karthik | HR | Project A |
| Ajay | HR | Project B |
| Vijay | IT | Project C |
| Vinay | IT | Project D |
| Meena | Finance | Project E |
| Priya | Sales | null |
| Veer | Marketing | null |
| Keerthi | Sales | null |

---

# Query 30

## Question

Display the names of employees who belong to at least one department, with the department name listed, but include employees without a department as well.

## Query

```sql
select e.emp_name,
       d.dept_name
from employees e
left join departments d
on e.dept_id = d.dept_id;
```

## Output

| emp_name | dept_name |
|---|---|
| Karthik | HR |
| Ajay | HR |
| Vijay | IT |
| Vinay | IT |
| Meena | Finance |
| Veer | Marketing |
| Keerthi | Sales |
| Priya | Sales |

---
