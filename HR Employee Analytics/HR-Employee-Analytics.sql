create database HR_Employee_Analytics;
Use HR_Employee_Analytics;

create table Employees (
employee_id int primary key,
employee_name varchar(50),
department_id int,
salary int,
hire_date date
);

insert into Employees
values
(1, 'Amit Sharma', 102, 75000, '2022-03-15'),
(2, 'Priya Verma', 101, 55000, '2021-07-10'),
(3, 'Rahul Patil', 104, 60000, '2023-01-20'),
(4, 'Sneha Reddy', 103, 80000, '2020-11-05'),
(5, 'Vikram Singh', 102, 90000, '2019-06-12'),
(6, 'Anjali Gupta', 105, 65000, '2022-09-18'),
(7, 'Karan Mehta', 106, 70000, '2021-04-25'),
(8, 'Pooja Nair', 107, 50000, '2023-05-08'),
(9, 'Rohit Kumar', 104, 62000, '2022-08-30'),
(10, 'Neha Joshi', 108, 95000, '2020-02-14'),
(11, 'Arjun Rao', 102, 85000, '2021-12-01'),
(12, 'Meera Kulkarni', 103, 72000, '2022-05-22'),
(13, 'Suresh Yadav', 106, 58000, '2023-03-11'),
(14, 'Kavya Iyer', 105, 68000, '2021-10-07'),
(15, 'Nitin Deshmukh', 107, 52000, '2022-12-19');

select * from employees;

create table departments(
department_id int primary key,
department_name varchar(50),
location varchar(50)
);
INSERT INTO departments VALUES
(101, 'Human Resources', 'Hyderabad'),
(102, 'Information Technology', 'Bangalore'),
(103, 'Finance', 'Mumbai'),
(104, 'Sales', 'Pune'),
(105, 'Marketing', 'Chennai'),
(106, 'Operations', 'Delhi'),
(107, 'Customer Support', 'Hyderabad'),
(108, 'Research and Development', 'Bangalore');

select * from departments;

create table attendance (
attendance_id int primary key,
employee_id int,
attendance_date date,
status varchar(50)
);

INSERT INTO attendance VALUES
(1, 1, '2025-06-01', 'Present'),
(2, 1, '2025-06-02', 'Present'),
(3, 2, '2025-06-01', 'Absent'),
(4, 2, '2025-06-02', 'Present'),
(5, 3, '2025-06-01', 'Present'),
(6, 3, '2025-06-02', 'Present'),
(7, 4, '2025-06-01', 'Present'),
(8, 4, '2025-06-02', 'Absent'),
(9, 5, '2025-06-01', 'Present'),
(10, 5, '2025-06-02', 'Present'),
(11, 6, '2025-06-01', 'Present'),
(12, 6, '2025-06-02', 'Present'),
(13, 7, '2025-06-01', 'Absent'),
(14, 7, '2025-06-02', 'Present'),
(15, 8, '2025-06-01', 'Present'),
(16, 8, '2025-06-02', 'Present'),
(17, 9, '2025-06-01', 'Present'),
(18, 9, '2025-06-02', 'Absent'),
(19, 10, '2025-06-01', 'Present'),
(20, 10, '2025-06-02', 'Present'),
(21, 11, '2025-06-01', 'Present'),
(22, 11, '2025-06-02', 'Present'),
(23, 12, '2025-06-01', 'Absent'),
(24, 12, '2025-06-02', 'Present'),
(25, 13, '2025-06-01', 'Present'),
(26, 13, '2025-06-02', 'Present'),
(27, 14, '2025-06-01', 'Present'),
(28, 14, '2025-06-02', 'Absent'),
(29, 15, '2025-06-01', 'Present'),
(30, 15, '2025-06-02', 'Present');

select * from attendance;

select *
from employees
where hire_date > "2023-01-01";

select employee_name, salary
from employees
where salary > "50000";

select employee_name, department_name
from employees
inner join departments
on employees.department_id = departments.department_id
where department_name = "Information Technology";

select *
from employees
order by salary desc;

select *
from employees
order by salary desc
limit 5;

select employee_name
from employees
where employee_name like 'A%';

select employee_name, department_name
from employees
inner join departments
on employees.department_id = departments.department_id
where department_name = "Human Resources";

select employee_name
from employees
where hire_date <= date_sub(curdate(), interval 3 year);

select count(employee_name)
from employees;

select avg(salary) as avg_salary
from employees;

select max(salary) as max_salary
from employees;

select min(salary) as min_salary
from employees;

select sum(salary) as total_salary_expanse
from employees;

select department_name, count(employee_id) as employee_count
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;

select avg(salary), department_name
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name;
 
select department_name, count(employee_id) as no_of_emp
from employees
inner join departments
on employees.department_id = departments.department_id
group by departments.department_name
having count(employee_id) > 1; 

SELECT department_name, AVG(salary) AS avg_salary
FROM Employees 
INNER JOIN Departments 
ON Employees.department_id = Departments.department_id
GROUP BY Departments.department_name
HAVING AVG(salary) > 60000;

select employee_name, count(attendance_date) as total_attendence
from employees
inner join attendance
on employees.employee_id = attendance.employee_id
group by employees.employee_id
having count(attendance_date) > 1;

SELECT employee_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;


SELECT employee_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 1;




