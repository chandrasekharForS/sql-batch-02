-- aggregate functions
create database aggregate_functions_db;
use aggregate_functions_db;

-- 1. Create employees Table Structure

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NULL,
    hire_date DATE NOT NULL
);

-- 2. Insert 50 Sample Rows
INSERT INTO employees (name, department, salary, hire_date) VALUES
('Alice Johnson', 'HR', 55000.00, '2020-01-15'),
('Bob Smith', 'Finance', 72000.00, '2019-07-23'),
('Charlie Brown', 'IT', 90000.00, '2018-09-12'),
('David Wilson', 'Marketing', 67000.00, '2021-03-10'),
('Emma Davis', 'Sales', 58000.00, '2020-11-30'),
('Frank Miller', 'HR', 62000.00, '2019-06-25'),
('Grace Lee', 'Finance', 75000.00, '2017-05-18'),
('Henry White', 'IT', 95000.00, '2020-08-01'),
('Isla Adams', 'Marketing', 68000.00, '2022-02-14'),
('Jack Turner', 'Sales', 60000.00, '2021-04-21'),
('Kara Evans', 'HR', 54000.00, '2020-09-08'),
('Liam Scott', 'Finance', 71000.00, '2018-10-19'),
('Mia Thomas', 'IT', 93000.00, '2019-12-01'),
('Noah Harris', 'Marketing', 66000.00, '2021-05-15'),
('Olivia Carter', 'Sales', 59000.00, '2020-12-22'),
('Paul King', 'HR', 63000.00, '2018-07-09'),
('Quinn Baker', 'Finance', 76000.00, '2019-02-28'),
('Rachel Green', 'IT', 94000.00, '2017-03-11'),
('Sam Nelson', 'Marketing', 67000.00, '2022-06-07'),
('Tina Wright', 'Sales', 61000.00, '2021-08-19'),
('Umar Patel', 'HR', 56000.00, '2020-11-11'),
('Vera Collins', 'Finance', 72000.00, '2018-04-30'),
('Will Morris', 'IT', 91000.00, '2019-07-15'),
('Xena Foster', 'Marketing', 65000.00, '2021-01-12'),
('Yusuf Grant', 'Sales', 62000.00, '2020-09-29'),
('Zara Brooks', 'HR', 53000.00, '2019-05-20'),
('Aaron Phillips', 'Finance', 74000.00, '2017-08-05'),
('Bella Cooper', 'IT', 97000.00, '2020-10-18'),
('Chris Young', 'Marketing', 69000.00, '2021-06-25'),
('Diana Adams', 'Sales', 63000.00, '2022-03-15'),
('Ethan Bennett', 'HR', 57000.00, '2019-09-11'),
('Fiona Martin', 'Finance', 73000.00, '2018-06-24'),
('George Reed', 'IT', 92000.00, '2020-07-30'),
('Holly Stewart', 'Marketing', 67000.00, '2021-09-10'),
('Ian Parker', 'Sales', 60000.00, '2020-05-05'),
('Jessica Brown', 'HR', 55000.00, '2019-12-07'),
('Kevin Adams', 'Finance', 77000.00, '2017-11-22'),
('Laura Mitchell', 'IT', 96000.00, '2018-01-15'),
('Mike Roberts', 'Marketing', 68000.00, '2021-07-20'),
('Nina Sanchez', 'Sales', 61000.00, '2022-05-10'),
('Oscar Turner', 'HR', 59000.00, '2018-03-25'),
('Pamela Ward', 'Finance', 73000.00, '2019-10-12'),
('Quentin Blake', 'IT', 98000.00, '2020-12-28'),
('Rebecca Hayes', 'Marketing', 66000.00, '2021-02-18'),
('Steve Morgan', 'Sales', 62000.00, '2020-08-14'),
('Tiffany Watson', 'HR', 54000.00, '2019-06-30'),
('Ursula Chapman', 'Finance', 76000.00, '2017-12-11'),
('Victor Hall', 'IT', 95000.00, '2018-09-23'),
('Wendy Dawson', 'Marketing', 67000.00, '2022-04-08'),
('Xavier Harris', 'Sales', 60000.00, '2021-10-03');

INSERT INTO employees (name, department, salary, hire_date) VALUES
('Anish Kumar', 'HR', null, '2020-01-15');

select * from employees;

-- how many employees
select count(*) as no_of_employees from employees;

select count(name) as no_of_employees from employees;

select count(salary) as salaried_employees from employees;

-- how many employee by department

select 
	department, 
    count(*) as no_of_employees 
from employees
group by department;

-- total expenditure for salary

select sum(salary) as salary_expenditure from employees;

-- total expenditure for salary for department
select department,sum(salary) as salary_expenditure from employees
group by department;

select avg(salary) as salary_expenditure from employees;

select department,sum(salary) as salary_expenditure from employees
group by department;

-- GROUP_CONCAT() - Concatenate Column Values

select * from employees;
-- Alice Johnson (2020-01-15)
select concat(name,' (', hire_date, ')') from employees;

select group_concat(name) from employees;
select group_concat(name, '+') from employees;

-- Get a list of employees per department
select department, group_concat(name) as names from employees
group by department;

-- having
select department, count(*) as no_of_employees from employees
group by department
where department = 'IT';

select department, count(*) as no_of_employees from employees
group by department
having department = 'IT'; -- use it

select department, count(*) as no_of_employees from employees
where department = 'IT'
group by department; -- dont use it

-- Find departments where the total salary exceeds $700,000:
select department,sum(salary) as total_salary from employees
group by department
having total_salary > 700000;

select department,sum(salary) from employees
group by department
having sum(salary) > 700000;

-- Find the Top 3 Highest Paid Employees
select name,salary from employees
order by salary desc
limit 3;

-- Find the Top 2 Highest Paid Employees Per Department
-- co-related subquery

select * from employees as o
where(
	select count(*) from employees as i
    where i.department = o.department
    and i.salary > o.salary
) < 2
order by department, salary desc;

-- Find Departments Where the Average Salary is Above $70,000
select department, avg(salary) from employees
group by department
having avg(salary) > 70000;

