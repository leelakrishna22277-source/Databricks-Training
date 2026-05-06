-------- >>   Having  queries  <<------------

select e.department_id,count(*),d.name from Employee e
join
Department d
on e.department_id=d.department_id
group by e.department_id,d.name
having count(d.department_id)>2;


select e.department_id,avg(e.salary) as avg_salary,d.name from Employee e
join
Department d
on e.department_id=d.department_id
group by e.department_id,d.name
having avg_salary>55000;


select year(hire_date),count(*) from Employee 
group by year(hire_date)
having count(hire_date)>1;

select e.department_id,sum(e.salary) as sum_salary,d.name from Employee e
join 
Department d
on e.department_id=d.department_id
group by  e.department_id,d.name
having sum_salary<100000;

select e.department_id,max(e.salary) as max_salary,d.name from Employee e
join 
Department d
on e.department_id=d.department_id
group by  e.department_id,d.name
having max_salary>75000;


-------- >>   Order By  queries  <<------------

select name,salary from Employee order by salary asc;

select name,age from Employee order by age desc;

select name,hire_date from Employee order by hire_date asc;

select name,department_id,salary from Employee order by department_id,salary ;

select e.department_id,d.name,sum(e.salary) as sum_salary from Employee e
join
Department d
on e.department_id=d.department_id
group by d.name,d.department_id
order by sum_salary;


-------- >>   Join  queries  <<------------

select e.name,d.name from Employee e
join
Department d
on e.department_id=d.department_id;


select p.name,d.name  from Project p
join
Department d
on p.department_id=d.department_id;


select e.name,p.name from Project p
join
Employee e
on p.department_id=e.department_id;

select  e.name,d.name from Employee e
left join
Department d
on e.department_id=d.department_id;

select  e.name,d.name from Employee e
right join
Department d
on e.department_id=d.department_id;



select e.name from Employee e
join
Project p
on e.department_id=p.department_id
where p.project_id =NUll;



select e.name, count(p.project_id) as project_count
from Employee e
join Project p
on e.department_id = p.department_id
group by e.name;

select d.name
from Department d
join Employee e
on e.department_id = d.department_id
where d.department_id =NUll;

select e2.name
from Employee e1
join Employee e2
on e1.department_id = e2.department_id
where e1.name = 'John Doe'
and e2.name <> 'John Doe';

select d.name, avg(e.salary) as avg_salary
from Employee e
join Department d
on e.department_id = d.department_id
group by d.name
order by avg_salary desc
limit 1;
