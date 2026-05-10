/* =========================================================
   SQL PRACTICE QUERIES
   Topics:
   1. HAVING Queries
   2. ORDER BY Queries
   3. JOIN Queries
   4. NESTED QUERIES
========================================================= */


-- =========================================================
-- HAVING QUERIES
-- =========================================================

-- Query 1
-- Find departments having more than 2 employees.

SELECT e.department_id,
       COUNT(*),
       d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY e.department_id, d.name
HAVING COUNT(d.department_id) > 2;


-- Query 2
-- Find departments where average salary is greater than 55000.

SELECT e.department_id,
       AVG(e.salary) AS avg_salary,
       d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY e.department_id, d.name
HAVING avg_salary > 55000;


-- Query 3
-- Find years where more than one employee was hired.

SELECT YEAR(hire_date),
       COUNT(*)
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(hire_date) > 1;


-- Query 4
-- Find departments where total salary is less than 100000.

SELECT e.department_id,
       SUM(e.salary) AS sum_salary,
       d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY e.department_id, d.name
HAVING sum_salary < 100000;


-- Query 5
-- Find departments where maximum salary is greater than 75000.

SELECT e.department_id,
       MAX(e.salary) AS max_salary,
       d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY e.department_id, d.name
HAVING max_salary > 75000;



-- =========================================================
-- ORDER BY QUERIES
-- =========================================================

-- Query 6
-- Display employee names and salaries in ascending salary order.

SELECT name,
       salary
FROM Employee
ORDER BY salary ASC;


-- Query 7
-- Display employee names and ages in descending age order.

SELECT name,
       age
FROM Employee
ORDER BY age DESC;


-- Query 8
-- Display employee names and hire dates sorted by hire date.

SELECT name,
       hire_date
FROM Employee
ORDER BY hire_date ASC;


-- Query 9
-- Display employees ordered by department and salary.

SELECT name,
       department_id,
       salary
FROM Employee
ORDER BY department_id, salary;


-- Query 10
-- Display department-wise total salary ordered by total salary.

SELECT e.department_id,
       d.name,
       SUM(e.salary) AS sum_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.name, d.department_id
ORDER BY sum_salary;



-- =========================================================
-- JOIN QUERIES
-- =========================================================

-- Query 11
-- Display employee names with department names.

SELECT e.name,
       d.name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;


-- Query 12
-- Display project names with department names.

SELECT p.name,
       d.name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;


-- Query 13
-- Display employee names and project names based on department.

SELECT e.name,
       p.name
FROM Project p
JOIN Employee e
ON p.department_id = e.department_id;


-- Query 14
-- Display all employees with department names using LEFT JOIN.

SELECT e.name,
       d.name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;


-- Query 15
-- Display all departments with employee names using RIGHT JOIN.

SELECT e.name,
       d.name
FROM Employee e
RIGHT JOIN Department d
ON e.department_id = d.department_id;


-- Query 16
-- Display employees who are not assigned to any project.

SELECT e.name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;


-- Query 17
-- Display employee names with total project count.

SELECT e.name,
       COUNT(p.project_id) AS project_count
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.name;


-- Query 18
-- Display departments without employees.

SELECT d.name
FROM Department d
JOIN Employee e
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;


-- Query 19
-- Find employees working in the same department as John Doe.

SELECT e2.name
FROM Employee e1
JOIN Employee e2
ON e1.department_id = e2.department_id
WHERE e1.name = 'John Doe'
AND e2.name <> 'John Doe';


-- Query 20
-- Display department-wise average salary.

SELECT d.name,
       AVG(e.salary) AS avg_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.name;



-- =========================================================
-- NESTED QUERIES
-- =========================================================

-- Query 21
-- Find employee with highest salary.

SELECT name,
       salary
FROM Employee1
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee1
);


-- Query 22
-- Find employees whose salary is above average salary.

SELECT *
FROM Employee1
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee1
);


-- Query 23
-- Find employee with second highest salary.

SELECT name,
       salary
FROM Employee1
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee1
)
ORDER BY salary DESC
LIMIT 1;


-- Query 24
-- Find department with the most employees.

SELECT d.name,
       COUNT(*)
FROM Department d
JOIN Employee1 e
ON e.department_id = d.department_id
GROUP BY d.name
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*)
    FROM Employee1
    GROUP BY department_id
);


-- Query 25
-- Find employees earning more than their department average salary.

SELECT e.name,
       d.name,
       (
           SELECT AVG(e2.salary)
           FROM Employee1 e2
           WHERE e2.department_id = e.department_id
       ) AS avgDepsal,
       e.salary
FROM Employee1 e
JOIN Department d
ON e.department_id = d.department_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM Employee1 e2
    WHERE e2.department_id = e.department_id
);


-- Query 26
-- Find the 3rd highest salary employee.

SELECT e.name,
       e.salary
FROM Employee1 e
WHERE e.salary = (
    SELECT DISTINCT e2.salary
    FROM Employee1 e2
    ORDER BY e2.salary DESC
    LIMIT 1 OFFSET 2
);


-- Query 27
-- Find employees older than all HR employees.

SELECT e.name,
       e.age
FROM Employee1 e
WHERE e.age > ALL (
    SELECT e2.age
    FROM Employee1 e2
    JOIN Department d
    ON e2.department_id = d.department_id
    WHERE d.name = 'HR'
);


-- Query 28
-- Find departments where average salary is greater than 55000.

SELECT *
FROM (
    SELECT d.name,
           AVG(e.salary) AS avg_salary
    FROM Employee1 e
    JOIN Department d
    ON e.department_id = d.department_id
    GROUP BY d.name
) dept_avg
WHERE avg_salary > 55000;


-- Query 29
-- Find employees working in departments having at least 2 projects.

SELECT *
FROM (
    SELECT e.name,
           COUNT(*) AS totalproject_count
    FROM Employee1 e
    JOIN Project p
    ON e.department_id = p.department_id
    GROUP BY e.name
) emp_proj_count
WHERE totalproject_count >= 2;


-- Query 30
-- Find employees hired on the same date as Jane Smith.

SELECT e2.name
FROM Employee1 e2
JOIN Employee1 e1
ON e2.hire_date = e1.hire_date
WHERE e1.name = 'Jane Smith'
AND e2.name <> 'Jane Smith';
