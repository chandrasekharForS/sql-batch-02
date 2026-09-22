-- sub queries
-- sqery --> select
-- sub query --> select
-- without main query there is no sub query.
-- always sub-query executes at first.
-- subquery result becomes value compared with the main query

-- main-query logical-operator(sub-query)

create database sub_queriesDB;
use sub_queriesDB;

-- 1. Create the departments Table
drop table departments;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- 2. Insert Data into departments

INSERT INTO departments (department_id, department_name)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR'),
(6, 'Operations'),
(7, 'R&D'),
(8, 'Legal'),
(9, 'Customer Support'),
(10, 'Admin'),
(11, 'Accounting'),
(12, 'Public Relations'),
(13, 'Training'),
(14, 'Logistics'),
(15, 'Purchasing'),
(16, 'Quality Assurance'),
(17, 'Product Management'),
(18, 'Design'),
(19, 'Business Development'),
(20, 'Engineering');

-- 3. Create the employees Table
drop table employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- 4. Insert Data into employees
INSERT INTO employees (employee_id, employee_name, salary, department_id)
VALUES
(1, 'John Doe', 500000, 3),
(2, 'Jane Smith', 55000, 1),
(3, 'Sam Johnson', 60000, 2),
(4, 'Sally Brown', 70000, 4),
(5, 'Tom Clark', 75000, 3),
(6, 'Lucy White', 80000, 5),
(7, 'David Lee', 85000, 6),
(8, 'Emma Walker', 900000, 3),
(9, 'James Taylor', 95000, 8),
(10, 'Olivia Scott', 100000, 9),
(11, 'Liam Adams', 10000, 2),
(12, 'Isabella Miller', 120000, 11),
(13, 'William King', 130000, 2),
(14, 'Sophia Wright', 140000, 13),
(15, 'Benjamin Harris', 150000, 14),
(16, 'Charlotte Young', 10000, 5),
(17, 'Jack Walker', 170000, 2),
(18, 'Amelia Allen', 180000, 17),
(19, 'Ethan Moore', 190000, 2),
(20, 'Avery Robinson', 20000, 19);

-- Single-row subqueries

-- 1. retrieves employees who earn more than the average salary in the company.

-- 1. find the average salary of the company
-- 2. find the employees who gets salary more than average salary of the company

select avg(salary) from employees;

select * from employees
where salary > 157000.00;

select * from employees
where salary > (select avg(salary) from employees);

-- find employees working in the same department as 'John Doe'

-- 1. 
select department_id from employees
where employee_name = 'John Doe';

select * from employees
where department_id = 3;

select * from employees
where department_id = (select department_id from employees
where employee_name = 'John Doe');

-- find employees whose salary is greater than the salary of employee with ID 1
-- 1.
select salary from employees
where employee_id = 1;

-- 2
select * from employees
where salary > (select salary from employees
where employee_id = 1);

-- Multi-row subqueries
-- retrieves employees who work in departments Sales, IT, or HR.
-- 1
select department_id from departments
where department_name in ('Sales', 'IT', 'HR');

select * from employees
where department_id in (select department_id from departments
where department_name in ('Sales', 'IT', 'HR'));

-- Check if any department exists
-- 1

select 1 from departments;

-- 
update employees set department_id = null
where employee_id = 20;

select * from employees where exists (
select 1 from departments);

-- retrieves employees who do not work in departments IT, Finance, or HR.

-- 1
select department_id from departments where department_name in ('IT', 'Finance', 'HR');

select * from employees
where department_id not in(select department_id from departments where department_name in ('IT', 'Finance', 'HR'));

-- retrieves employees who have a salary greater than the lowest salary in department 3.
--
select min(salary) from employees
where department_id = 3;

-- through single row
select * from employees
where salary > (select min(salary) from employees
where department_id = 3);

-- multi row
SELECT employee_id, employee_name, salary
FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE department_id = 3
);


-- retrieves employees who earn more than all employees in department 1.
select * from employees
where salary > (select max(salary) from employees where department_id = 1);


SELECT employee_id, employee_name, salary
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE department_id = 1
);
-- retrieves employees who work in departments where the average salary is greater than 70,000.
SELECT employee_id, employee_name, salary
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) > 70000
);

-- Correlated subqueries
-- actually always the sub-query will be executing first but not
-- in the case of correlated subquery.

-- Employees Earning More than Their Department's Average Salary
select avg(salary) from employees
where department_id = 1; -- or 2 or 3 or 4

select * from employees as e
where salary > (
	select avg(salary) from employees
    where department_id = e.department_id
);

-- Retrieve Employees Who Earn More Than the Employee 
-- in the Same Department with the Lowest Salary

select * from employees as e
where salary > (
	select min(salary) from employees
    where department_id = e.department_id
);

-- Retrieve Employees Who Are Earning the Same as or More Than 
-- the Average Salary of Their Department

select * from employees as e
where salary >= (
	select avg(salary) from employees
    where department_id = e.department_id
);

-- Nested subqueries:
-- main-query=(sub-query1=(sub-query2))

-- find the highest salary in a department IT and display 
-- information about employees 
select * from employees
where salary = (
select max(salary) from employees
where department_id = (
	select department_id from departments
    where department_name = 'IT')
);

-- retrieves the employee details along with the department name 
-- and the department's average salary.
select 
	employee_name, 
    salary, 
    (select department_name from departments
    where department_id = e.department_id) as department_name,
    (select round(avg(salary), 2) from employees
    where department_id = e.department_id) as average_salary
from employees as e;

-- retrieves employees who work in the same departments as 
-- employees who earn more than $100,000.
select * from employees
where department_id in (
select department_id from employees
where salary > 100000);

-- retrieves departments that have at least one employee 
-- earning more than $90,000.
select department_name from departments as d
where exists
(select 1 from employees
where department_id = d.department_id and
salary > 90000);


