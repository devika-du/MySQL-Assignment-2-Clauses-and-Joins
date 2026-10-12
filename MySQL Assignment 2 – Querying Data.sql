
select distinct(salary)from employees;
select age as Employee_Age , salary as Employee_Salay from employees;
select * from employees where salary>50000 and hire_date<"2016-01-01";
update employees set designation="Data Scientist"where designation is NULL;
select* from employees order by department_id asc, salary desc;
select * from employees where hire_date>= "2018-01-01" and hire_date <"2019-01-01" order by hire_date asc limit 5;
select sum(salary) as total_salary from employees where department_id=(select department_id from departments where department_name ="finance");
select min(age) as min_age from employees;
select locations.location, max(employees.salary)as max_salary from locations join employees on locations.location_id=employees.location_id group by
 locations.location_id, locations.location;
select designation, avg(salary) as avg_salary from employees where designation like"%Analyst%" group by designation;
select department_name, count(e.employee_id) from departments as d join 
employees as e on d.department_id=e.department_id group by d.department_id, d.department_name having count(e.employee_id)<3;
select location, avg(e1.age) from locations as L1 join employees as e1 on L1. location_id= e1.location_id where e1.gender="f"
 group by L1 . location_id, L1. location having avg(e1. age)<30;
 select * from employees;
select e. employee_name, e. designation, d. department_name  from employees as e inner join departments as d on e. department_id= d. department_id;
select d. department_name, count(e.employee_id) as total_employees from departments as d left join
 employees as e on d. department_id= e. department_id group by d. department_id, d.department_name;
 select l.location,e.employee_name from employees as e right join locations as l on e.location_id=l.location_id;








