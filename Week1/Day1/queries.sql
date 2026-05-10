-------- >>   Basic queries  <<------------
 
select * from Employee;

select name,salary from Employee;

select * from Employee where age>30;

select name from Department;

select * from  Employee where department_id=1;

-------- >>   String queries  <<------------

select * from Employee where name like 'J%';

select * from Employee where name like '%a%';

select * from Employee where name like '%e';

select  * from Employee where length(name)=9;

select *from Employee where name like '_o%'


-------- >>   Date queries  <<------------

select *from Employee;

select * from Employee where year(hire_date)=2020;

select * from Employee where month(hire_date)=1 ;

select * from Employee where year(hire_date)<2019;

select * from Employee where hire_date>='2021-03-01';

select * from Employee where hire_date>=2023;

select current_date;
select * from Employee where hire_date=Date_Sub(current_date,interval 2 year);


-------- >>   Aggregate queries  <<------------

select sum(salary) from Employee;

select avg(salary) from Employee;

select min(salary) from Employee;

select e.department_id, d.name, count(*) from Employee e
join
Department d 
on e.department_id = d.department_id
group by e.department_id, d.name;

select e.department_id, d.name, avg(salary) from Employee e
join
Department d 
on e.department_id = d.department_id
group by e.department_id, d.name;


-------- >>   Group BY  queries  <<------------


select e.department_id,d.name,sum(salary) from Employee e
join
Department d
on e.department_id=d.department_id
group by e.department_id,d.name;

select e.department_id,d.name,avg(salary) from Employee e
join
Department d
on e.department_id=d.department_id
group by e.department_id,d.name;

select   year(hire_date) ,count(*) from Employee group by year(hire_date);

select e.department_id,d.name,max(salary) from Employee e
join
Department d
on e.department_id=d.department_id
group by e.department_id,d.name;


select e.department_id, d.name, avg(salary) as avg_salary
from Employee e
join Department d 
on e.department_id = d.department_id
group by e.department_id, d.name
order by avg_salary desc
limit 1;


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
