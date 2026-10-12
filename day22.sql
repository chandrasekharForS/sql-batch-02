drop database advanced_sql_db;
create database advanced_sql_db;

use advanced_sql_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (employee_id, employee_name, department, salary) VALUES
(1, 'Arun Kumar', 'HR', 50000),
(2, 'Bhanu Prakash', 'HR', 52000),
(3, 'Chandrasekhar', 'HR', 55000),
(4, 'Deepak Rao', 'HR', 58000),
(5, 'Eswar Reddy', 'HR', 60000),
(6, 'Farooq Ahmed', 'HR', 53000),
(7, 'Ganesh Kumar', 'HR', 57000),
(8, 'Hari Prasad', 'HR', 54000),
(9, 'Irfan Khan', 'HR', 56000),
(10, 'Jagan Mohan', 'HR', 55000),
(11, 'Kiran Kumar', 'HR', 51000),
(12, 'Lokesh Rao', 'HR', 59000),
(13, 'Manoj Kumar', 'HR', 54000),
(14, 'Naveen Reddy', 'HR', 56000),
(15, 'Omkar Rao', 'HR', 55000),
(16, 'Prakash Kumar', 'HR', 53000),
(17, 'Ramesh Babu', 'HR', 57000),
(18, 'Suresh Kumar', 'HR', 55000),
(19, 'Tarun Rao', 'HR', 58000),
(20, 'Uday Kumar', 'HR', 55000),

(21, 'Vijay Kumar', 'IT', 70000),
(22, 'Ajay Sharma', 'IT', 72000),
(23, 'Bharat Rao', 'IT', 75000),
(24, 'Chaitanya Reddy', 'IT', 78000),
(25, 'Dinesh Kumar', 'IT', 80000),
(26, 'Eshwar Rao', 'IT', 73000),
(27, 'Gopal Krishna', 'IT', 77000),
(28, 'Harish Kumar', 'IT', 74000),
(29, 'Imran Khan', 'IT', 76000),
(30, 'Jeevan Reddy', 'IT', 75000),
(31, 'Karthik Rao', 'IT', 71000),
(32, 'Lalith Kumar', 'IT', 79000),
(33, 'Mahesh Babu', 'IT', 74000),
(34, 'Nikhil Reddy', 'IT', 76000),
(35, 'Pavan Kumar', 'IT', 75000),
(36, 'Raghu Rao', 'IT', 73000),
(37, 'Sanjay Kumar', 'IT', 77000),
(38, 'Teja Reddy', 'IT', 75000),
(39, 'Vamsi Krishna', 'IT', 78000),
(40, 'Yash Kumar', 'IT', 75000),

(41, 'Anil Kumar', 'Sales', 60000),
(42, 'Bala Krishna', 'Sales', 62000),
(43, 'Charan Reddy', 'Sales', 65000),
(44, 'Dharma Rao', 'Sales', 68000),
(45, 'Elvin Joseph', 'Sales', 70000),
(46, 'Feroz Khan', 'Sales', 63000),
(47, 'Gautham Rao', 'Sales', 67000),
(48, 'Hemanth Kumar', 'Sales', 64000),
(49, 'Ishaan Reddy', 'Sales', 66000),
(50, 'Jithendra Kumar', 'Sales', 65000),
(51, 'Kalyan Rao', 'Sales', 61000),
(52, 'Mohan Kumar', 'Sales', 69000),
(53, 'Narasimha Rao', 'Sales', 64000),
(54, 'Prajwal Reddy', 'Sales', 66000),
(55, 'Rahul Kumar', 'Sales', 65000),
(56, 'Ravi Teja', 'Sales', 63000),
(57, 'Sandeep Kumar', 'Sales', 67000),
(58, 'Surya Prakash', 'Sales', 65000),
(59, 'Venu Gopal', 'Sales', 68000),
(60, 'Vinay Kumar', 'Sales', 65000),

(61, 'Abhishek Rao', 'HR', 52000),
(62, 'Aditya Kumar', 'HR', 58000),
(63, 'Akash Reddy', 'HR', 55000),
(64, 'Anand Kumar', 'HR', 57000),
(65, 'Ashok Rao', 'HR', 53000),
(66, 'Bharath Kumar', 'HR', 56000),
(67, 'Chakri Reddy', 'HR', 55000),
(68, 'Dheeraj Kumar', 'HR', 54000),
(69, 'Koushik Rao', 'HR', 59000),
(70, 'Madhav Kumar', 'HR', 55000),

(71, 'Abhinav Kumar', 'IT', 72000),
(72, 'Adarsh Reddy', 'IT', 78000),
(73, 'Akshay Kumar', 'IT', 75000),
(74, 'Amar Rao', 'IT', 73000),
(75, 'Anvesh Reddy', 'IT', 77000),
(76, 'Aravind Kumar', 'IT', 74000),
(77, 'Ashwin Rao', 'IT', 76000),
(78, 'Bharani Kumar', 'IT', 75000),
(79, 'Chandu Reddy', 'IT', 79000),
(80, 'Dhanush Kumar', 'IT', 75000),

(81, 'Akhil Kumar', 'Sales', 62000),
(82, 'Arjun Reddy', 'Sales', 68000),
(83, 'Bharat Kumar', 'Sales', 65000),
(84, 'Chandu Rao', 'Sales', 63000),
(85, 'Dilip Kumar', 'Sales', 67000),
(86, 'Girish Reddy', 'Sales', 64000),
(87, 'Kiran Rao', 'Sales', 66000),
(88, 'Madhav Reddy', 'Sales', 65000),
(89, 'Naveen Kumar', 'Sales', 69000),
(90, 'Praveen Rao', 'Sales', 65000),

(91, 'Rajesh Kumar', 'HR', 55000),
(92, 'Rohit Reddy', 'HR', 56000),
(93, 'Srinivas Rao', 'HR', 54000),
(94, 'Venkat Kumar', 'HR', 57000),
(95, 'Vivek Reddy', 'HR', 55000),
(96, 'Rakesh Kumar', 'IT', 76000),
(97, 'Rohit Kumar', 'IT', 74000),
(98, 'Sathish Reddy', 'IT', 78000),
(99, 'Suraj Kumar', 'Sales', 66000),
(100, 'Varun Reddy', 'Sales', 64000);


select
	department,
    sum(salary) as total_salary_by_department
from employees
group by department;

select
	employee_name,
	department,
    salary,
    avg(salary) as average_salary_by_department
from employees
group by employee_name, department, salary;

select
	employee_name,
    department,
    salary,
    round(avg(salary) over(partition by department), 2) as average_salary_by_department
from employees;

select
	employee_id,
	employee_name,
    department,
    salary,
    row_number() over(order by salary desc) as row_num
from employees;

select
	employee_id,
	employee_name,
    department,
    salary,
    row_number() over(partition by department order by salary desc) as row_num
from employees;

select
	employee_id,
	employee_name,
    department,
    salary,
    rank() over(order by salary desc) as rankk
from employees;

select
	employee_id,
	employee_name,
    department,
    salary,
    rank() over(partition by department order by salary desc) as rankk
from employees;


select
	employee_id,
	employee_name,
    department,
    salary,
    dense_rank() over(order by salary desc) as dense_rankk
from employees;

select
	employee_id,
	employee_name,
    department,
    salary,
    dense_rank() over(partition by department order by salary desc) as dense_rankk
from employees;

CREATE TABLE monthly_sales (
    id INT PRIMARY KEY,
    month VARCHAR(10),
    sales DECIMAL(10,2)
);
INSERT INTO monthly_sales (id, month, sales) VALUES
(1, 'Jan', 45000.00),
(2, 'Feb', 52000.00),
(3, 'Mar', 48000.00),
(4, 'Apr', 61000.00),
(5, 'May', 57000.00),
(6, 'Jun', 68000.00),
(7, 'Jul', 72000.00),
(8, 'Aug', 65000.00),
(9, 'Sep', 75000.00),
(10, 'Oct', 81000.00),
(11, 'Nov', 79000.00),
(12, 'Dec', 85000.00),
(13, 'Jan', 88000.00),
(14, 'Feb', 92000.00),
(15, 'Mar', 87000.00),
(16, 'Apr', 95000.00),
(17, 'May', 99000.00),
(18, 'Jun', 93000.00),
(19, 'Jul', 102000.00),
(20, 'Aug', 108000.00),
(21, 'Sep', 105000.00),
(22, 'Oct', 112000.00),
(23, 'Nov', 118000.00),
(24, 'Dec', 115000.00),
(25, 'Jan', 121000.00),
(26, 'Feb', 125000.00),
(27, 'Mar', 119000.00),
(28, 'Apr', 128000.00),
(29, 'May', 132000.00),
(30, 'Jun', 129000.00),
(31, 'Jul', 135000.00),
(32, 'Aug', 140000.00),
(33, 'Sep', 137000.00),
(34, 'Oct', 145000.00),
(35, 'Nov', 149000.00),
(36, 'Dec', 143000.00),
(37, 'Jan', 151000.00),
(38, 'Feb', 156000.00),
(39, 'Mar', 153000.00),
(40, 'Apr', 160000.00),
(41, 'May', 165000.00),
(42, 'Jun', 161000.00),
(43, 'Jul', 170000.00),
(44, 'Aug', 175000.00),
(45, 'Sep', 172000.00),
(46, 'Oct', 180000.00),
(47, 'Nov', 185000.00),
(48, 'Dec', 181000.00),
(49, 'Jan', 190000.00),
(50, 'Feb', 195000.00),
(51, 'Mar', 192000.00),
(52, 'Apr', 200000.00),
(53, 'May', 205000.00),
(54, 'Jun', 201000.00),
(55, 'Jul', 210000.00),
(56, 'Aug', 215000.00),
(57, 'Sep', 211000.00),
(58, 'Oct', 220000.00),
(59, 'Nov', 225000.00),
(60, 'Dec', 221000.00),
(61, 'Jan', 230000.00),
(62, 'Feb', 235000.00),
(63, 'Mar', 231000.00),
(64, 'Apr', 240000.00),
(65, 'May', 245000.00),
(66, 'Jun', 241000.00),
(67, 'Jul', 250000.00),
(68, 'Aug', 255000.00),
(69, 'Sep', 251000.00),
(70, 'Oct', 260000.00),
(71, 'Nov', 265000.00),
(72, 'Dec', 261000.00),
(73, 'Jan', 270000.00),
(74, 'Feb', 275000.00),
(75, 'Mar', 271000.00),
(76, 'Apr', 280000.00),
(77, 'May', 285000.00),
(78, 'Jun', 281000.00),
(79, 'Jul', 290000.00),
(80, 'Aug', 295000.00),
(81, 'Sep', 291000.00),
(82, 'Oct', 300000.00),
(83, 'Nov', 305000.00),
(84, 'Dec', 301000.00),
(85, 'Jan', 310000.00),
(86, 'Feb', 315000.00),
(87, 'Mar', 311000.00),
(88, 'Apr', 320000.00),
(89, 'May', 325000.00),
(90, 'Jun', 321000.00),
(91, 'Jul', 330000.00),
(92, 'Aug', 335000.00),
(93, 'Sep', 331000.00),
(94, 'Oct', 340000.00),
(95, 'Nov', 345000.00),
(96, 'Dec', 341000.00),
(97, 'Jan', 350000.00),
(98, 'Feb', 355000.00),
(99, 'Mar', 351000.00),
(100, 'Apr', 360000.00);

select
	id, 
    month,
    sales,
    lag(sales) over(order by id) as previous_month
from monthly_sales;

select
	id, 
    month,
    sales,
    lead(sales) over(order by id) as next_month
from monthly_sales;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO orders (order_id, order_date, amount) VALUES
(1, '2026-01-01', 1000.00),
(2, '2026-01-02', 1500.00),
(3, '2026-01-03', 2000.00),
(4, '2026-01-04', 1200.00),
(5, '2026-01-05', 2000.00),
(6, '2026-01-06', 1800.00),
(7, '2026-01-07', 2500.00),
(8, '2026-01-08', 1600.00),
(9, '2026-01-09', 2200.00),
(10, '2026-01-10', 1500.00),
(11, '2026-01-11', 3000.00),
(12, '2026-01-12', 1750.00),
(13, '2026-01-13', 2800.00),
(14, '2026-01-14', 2100.00),
(15, '2026-01-15', 3000.00),
(16, '2026-01-16', 1900.00),
(17, '2026-01-17', 2600.00),
(18, '2026-01-18', 2300.00),
(19, '2026-01-19', 3200.00),
(20, '2026-01-20', 2400.00),
(21, '2026-01-21', 3500.00),
(22, '2026-01-22', 2700.00),
(23, '2026-01-23', 3100.00),
(24, '2026-01-24', 2900.00),
(25, '2026-01-25', 4000.00),
(26, '2026-01-26', 3300.00),
(27, '2026-01-27', 2800.00),
(28, '2026-01-28', 3600.00),
(29, '2026-01-29', 4200.00),
(30, '2026-01-30', 3100.00),
(31, '2026-01-31', 4500.00),
(32, '2026-02-01', 3800.00),
(33, '2026-02-02', 2900.00),
(34, '2026-02-03', 4100.00),
(35, '2026-02-04', 3500.00),
(36, '2026-02-05', 4800.00),
(37, '2026-02-06', 3200.00),
(38, '2026-02-07', 4400.00),
(39, '2026-02-08', 3900.00),
(40, '2026-02-09', 5000.00),
(41, '2026-02-10', 3600.00),
(42, '2026-02-11', 4700.00),
(43, '2026-02-12', 4200.00),
(44, '2026-02-13', 5300.00),
(45, '2026-02-14', 4000.00),
(46, '2026-02-15', 4900.00),
(47, '2026-02-16', 4500.00),
(48, '2026-02-17', 5600.00),
(49, '2026-02-18', 4300.00),
(50, '2026-02-19', 5200.00),
(51, '2026-02-20', 4700.00),
(52, '2026-02-21', 6000.00),
(53, '2026-02-22', 4800.00),
(54, '2026-02-23', 5500.00),
(55, '2026-02-24', 5100.00),
(56, '2026-02-25', 6200.00),
(57, '2026-02-26', 4900.00),
(58, '2026-02-27', 5800.00),
(59, '2026-02-28', 5300.00),
(60, '2026-03-01', 6500.00),
(61, '2026-03-02', 5200.00),
(62, '2026-03-03', 6100.00),
(63, '2026-03-04', 5700.00),
(64, '2026-03-05', 6800.00),
(65, '2026-03-06', 5400.00),
(66, '2026-03-07', 6300.00),
(67, '2026-03-08', 5900.00),
(68, '2026-03-09', 7000.00),
(69, '2026-03-10', 5600.00),
(70, '2026-03-11', 6600.00),
(71, '2026-03-12', 6200.00),
(72, '2026-03-13', 7300.00),
(73, '2026-03-14', 5800.00),
(74, '2026-03-15', 6900.00),
(75, '2026-03-16', 6400.00),
(76, '2026-03-17', 7600.00),
(77, '2026-03-18', 6100.00),
(78, '2026-03-19', 7200.00),
(79, '2026-03-20', 6700.00),
(80, '2026-03-21', 8000.00),
(81, '2026-03-22', 6300.00),
(82, '2026-03-23', 7500.00),
(83, '2026-03-24', 7000.00),
(84, '2026-03-25', 8200.00),
(85, '2026-03-26', 6600.00),
(86, '2026-03-27', 7800.00),
(87, '2026-03-28', 7300.00),
(88, '2026-03-29', 8500.00),
(89, '2026-03-30', 6900.00),
(90, '2026-03-31', 8100.00),
(91, '2026-04-01', 7600.00),
(92, '2026-04-02', 9000.00),
(93, '2026-04-03', 7200.00),
(94, '2026-04-04', 8400.00),
(95, '2026-04-05', 7900.00),
(96, '2026-04-06', 9200.00),
(97, '2026-04-07', 7500.00),
(98, '2026-04-08', 8800.00),
(99, '2026-04-09', 8200.00),
(100, '2026-04-10', 9500.00);

SELECT
    order_date,
    amount,
    SUM(amount) OVER (
        ORDER BY order_date, order_id
    ) AS running_total
FROM orders
ORDER BY order_date, order_id;

drop table employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT,
    CONSTRAINT fk_manager
        FOREIGN KEY (manager_id)
        REFERENCES employees(employee_id)
);


INSERT INTO employees
(employee_id, employee_name, department, salary, manager_id)
VALUES
(1, 'Arun Kumar', 'HR', 55000.00, NULL),
(2, 'Bhanu Prakash', 'HR', 52000.00, 1),
(3, 'Chandra Sekhar', 'HR', 58000.00, 1),
(4, 'Deepak Rao', 'HR', 56000.00, 1),
(5, 'Eswar Reddy', 'HR', 54000.00, 1),
(6, 'Farooq Ahmed', 'HR', 57000.00, 1),
(7, 'Ganesh Kumar', 'HR', 53000.00, 1),
(8, 'Hari Prasad', 'HR', 55000.00, 1),
(9, 'Irfan Khan', 'HR', 59000.00, 1),
(10, 'Jagan Mohan', 'HR', 55000.00, 1),

(11, 'Kiran Kumar', 'IT', 75000.00, NULL),
(12, 'Lokesh Rao', 'IT', 72000.00, 11),
(13, 'Manoj Kumar', 'IT', 78000.00, 11),
(14, 'Naveen Reddy', 'IT', 74000.00, 11),
(15, 'Omkar Rao', 'IT', 76000.00, 11),
(16, 'Prakash Kumar', 'IT', 73000.00, 11),
(17, 'Ramesh Babu', 'IT', 79000.00, 11),
(18, 'Suresh Kumar', 'IT', 75000.00, 11),
(19, 'Tarun Rao', 'IT', 77000.00, 11),
(20, 'Uday Kumar', 'IT', 76000.00, 11),

(21, 'Vijay Kumar', 'Sales', 65000.00, NULL),
(22, 'Ajay Sharma', 'Sales', 62000.00, 21),
(23, 'Bharat Rao', 'Sales', 68000.00, 21),
(24, 'Chaitanya Reddy', 'Sales', 64000.00, 21),
(25, 'Dinesh Kumar', 'Sales', 66000.00, 21),
(26, 'Eshwar Rao', 'Sales', 63000.00, 21),
(27, 'Gopal Krishna', 'Sales', 67000.00, 21),
(28, 'Harish Kumar', 'Sales', 65000.00, 21),
(29, 'Imran Khan', 'Sales', 69000.00, 21),
(30, 'Jeevan Reddy', 'Sales', 64000.00, 21),

(31, 'Karthik Rao', 'HR', 54000.00, 1),
(32, 'Lalith Kumar', 'HR', 56000.00, 1),
(33, 'Mahesh Babu', 'HR', 55000.00, 1),
(34, 'Nikhil Reddy', 'HR', 53000.00, 1),
(35, 'Pavan Kumar', 'HR', 57000.00, 1),
(36, 'Raghu Rao', 'HR', 55000.00, 1),
(37, 'Sanjay Kumar', 'HR', 52000.00, 1),
(38, 'Teja Reddy', 'HR', 58000.00, 1),
(39, 'Vamsi Krishna', 'HR', 55000.00, 1),
(40, 'Yash Kumar', 'HR', 56000.00, 1),

(41, 'Abhinav Kumar', 'IT', 71000.00, 11),
(42, 'Adarsh Reddy', 'IT', 78000.00, 11),
(43, 'Akshay Kumar', 'IT', 75000.00, 11),
(44, 'Amar Rao', 'IT', 73000.00, 11),
(45, 'Anvesh Reddy', 'IT', 77000.00, 11),
(46, 'Aravind Kumar', 'IT', 74000.00, 11),
(47, 'Ashwin Rao', 'IT', 76000.00, 11),
(48, 'Bharani Kumar', 'IT', 75000.00, 11),
(49, 'Chandu Reddy', 'IT', 79000.00, 11),
(50, 'Dhanush Kumar', 'IT', 75000.00, 11),

(51, 'Akhil Kumar', 'Sales', 62000.00, 21),
(52, 'Arjun Reddy', 'Sales', 68000.00, 21),
(53, 'Bharat Kumar', 'Sales', 65000.00, 21),
(54, 'Chandu Rao', 'Sales', 63000.00, 21),
(55, 'Dilip Kumar', 'Sales', 67000.00, 21),
(56, 'Girish Reddy', 'Sales', 64000.00, 21),
(57, 'Kiran Rao', 'Sales', 66000.00, 21),
(58, 'Madhav Reddy', 'Sales', 65000.00, 21),
(59, 'Naveen Kumar', 'Sales', 69000.00, 21),
(60, 'Praveen Rao', 'Sales', 65000.00, 21),

(61, 'Rajesh Kumar', 'HR', 55000.00, 1),
(62, 'Rohit Reddy', 'HR', 56000.00, 1),
(63, 'Srinivas Rao', 'HR', 54000.00, 1),
(64, 'Venkat Kumar', 'HR', 57000.00, 1),
(65, 'Vivek Reddy', 'HR', 55000.00, 1),
(66, 'Rakesh Kumar', 'HR', 53000.00, 1),
(67, 'Rohit Kumar', 'HR', 58000.00, 1),
(68, 'Sathish Reddy', 'HR', 55000.00, 1),
(69, 'Suraj Kumar', 'HR', 54000.00, 1),
(70, 'Varun Reddy', 'HR', 57000.00, 1),

(71, 'Amit Kumar', 'IT', 72000.00, 11),
(72, 'Anil Reddy', 'IT', 76000.00, 11),
(73, 'Ashok Kumar', 'IT', 74000.00, 11),
(74, 'Bharath Reddy', 'IT', 78000.00, 11),
(75, 'Chakri Kumar', 'IT', 75000.00, 11),
(76, 'Dheeraj Reddy', 'IT', 73000.00, 11),
(77, 'Koushik Kumar', 'IT', 77000.00, 11),
(78, 'Madhav Rao', 'IT', 76000.00, 11),
(79, 'Prajwal Reddy', 'IT', 74000.00, 11),
(80, 'Rahul Kumar', 'IT', 75000.00, 11),

(81, 'Ravi Teja', 'Sales', 63000.00, 21),
(82, 'Sandeep Kumar', 'Sales', 67000.00, 21),
(83, 'Surya Prakash', 'Sales', 65000.00, 21),
(84, 'Venu Gopal', 'Sales', 68000.00, 21),
(85, 'Vinay Kumar', 'Sales', 64000.00, 21),
(86, 'Anand Kumar', 'Sales', 66000.00, 21),
(87, 'Ashok Rao', 'Sales', 65000.00, 21),
(88, 'Bala Krishna', 'Sales', 62000.00, 21),
(89, 'Charan Reddy', 'Sales', 69000.00, 21),
(90, 'Dharma Rao', 'Sales', 65000.00, 21),

(91, 'Elvin Joseph', 'HR', 55000.00, 1),
(92, 'Feroz Khan', 'HR', 56000.00, 1),
(93, 'Gautham Rao', 'HR', 54000.00, 1),
(94, 'Hemanth Kumar', 'HR', 57000.00, 1),
(95, 'Ishaan Reddy', 'HR', 55000.00, 1),

(96, 'Jithendra Kumar', 'IT', 76000.00, 11),
(97, 'Kalyan Rao', 'IT', 74000.00, 11),
(98, 'Mohan Kumar', 'IT', 78000.00, 11),

(99, 'Narasimha Rao', 'Sales', 66000.00, 21),
(100, 'Prajwal Kumar', 'Sales', 64000.00, 21);

select * from employees;


SELECT
        employee_id,
        employee_name,
        manager_id,
        0 AS level
    FROM employees
    WHERE manager_id IS NULL;

    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    JOIN employee_hierarchy eh
        ON e.manager_id = eh.employee_id;


WITH RECURSIVE employee_hierarchy AS (
    -- Anchor query
    SELECT
        employee_id,
        employee_name,
        manager_id,
        0 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive query
    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id,
        eh.level + 1
    FROM employees e
    JOIN employee_hierarchy eh
        ON e.manager_id = eh.employee_id
)

select * from employee_hierarchy;

WITH RECURSIVE numbers AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 10
)

SELECT *
FROM numbers;


SELECT *
FROM employees
WHERE salary > 60000;

with high_salary as (
	select * from employees
    where salary > 60000
)

select * from high_salary
where salary > 70000;

SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department;

with department_average_salary as (
	select
		department,
        avg(salary) as average_salary
	from employees
    group by department
)
select average_salary from department_average_salary;

with dept_salary as (
	select
		department,
        avg(salary) as average_salary
	from employees
    group by department
)
,
high_salary_dept as(
	select * from dept_salary
    where average_salary > 70000
)
select * from high_salary_dept;

-- pivot
CREATE TABLE sales (
    department VARCHAR(50),
    year INT,
    amount DECIMAL(10,2)
);

INSERT INTO sales (department, year, amount) VALUES
('IT', 2024, 50000),
('IT', 2025, 70000),
('HR', 2024, 30000),
('HR', 2025, 40000),
('Sales', 2024, 65000),
('Sales', 2025, 80000),
('Finance', 2024, 45000),
('Finance', 2025, 55000),
('Marketing', 2024, 35000),
('Marketing', 2025, 50000),

('IT', 2024, 52000),
('IT', 2025, 73000),
('HR', 2024, 32000),
('HR', 2025, 43000),
('Sales', 2024, 68000),
('Sales', 2025, 85000),
('Finance', 2024, 47000),
('Finance', 2025, 58000),
('Marketing', 2024, 37000),
('Marketing', 2025, 53000),

('IT', 2024, 55000),
('IT', 2025, 76000),
('HR', 2024, 34000),
('HR', 2025, 45000),
('Sales', 2024, 70000),
('Sales', 2025, 88000),
('Finance', 2024, 49000),
('Finance', 2025, 60000),
('Marketing', 2024, 39000),
('Marketing', 2025, 56000),

('IT', 2024, 58000),
('IT', 2025, 79000),
('HR', 2024, 36000),
('HR', 2025, 47000),
('Sales', 2024, 73000),
('Sales', 2025, 91000),
('Finance', 2024, 51000),
('Finance', 2025, 63000),
('Marketing', 2024, 41000),
('Marketing', 2025, 59000),

('IT', 2024, 60000),
('IT', 2025, 82000),
('HR', 2024, 38000),
('HR', 2025, 49000),
('Sales', 2024, 76000),
('Sales', 2025, 94000),
('Finance', 2024, 53000),
('Finance', 2025, 66000),
('Marketing', 2024, 43000),
('Marketing', 2025, 62000),

('IT', 2024, 63000),
('IT', 2025, 85000),
('HR', 2024, 40000),
('HR', 2025, 51000),
('Sales', 2024, 79000),
('Sales', 2025, 97000),
('Finance', 2024, 55000),
('Finance', 2025, 69000),
('Marketing', 2024, 45000),
('Marketing', 2025, 65000),

('IT', 2024, 66000),
('IT', 2025, 88000),
('HR', 2024, 42000),
('HR', 2025, 53000),
('Sales', 2024, 82000),
('Sales', 2025, 100000),
('Finance', 2024, 57000),
('Finance', 2025, 72000),
('Marketing', 2024, 47000),
('Marketing', 2025, 68000),

('IT', 2024, 69000),
('IT', 2025, 91000),
('HR', 2024, 44000),
('HR', 2025, 55000),
('Sales', 2024, 85000),
('Sales', 2025, 103000),
('Finance', 2024, 59000),
('Finance', 2025, 75000),
('Marketing', 2024, 49000),
('Marketing', 2025, 71000),

('IT', 2024, 72000),
('IT', 2025, 94000),
('HR', 2024, 46000),
('HR', 2025, 57000),
('Sales', 2024, 88000),
('Sales', 2025, 106000),
('Finance', 2024, 61000),
('Finance', 2025, 78000),
('Marketing', 2024, 51000),
('Marketing', 2025, 74000),

('IT', 2024, 75000),
('IT', 2025, 97000),
('HR', 2024, 48000),
('HR', 2025, 59000),
('Sales', 2024, 91000),
('Sales', 2025, 109000),
('Finance', 2024, 63000),
('Finance', 2025, 81000),
('Marketing', 2024, 53000),
('Marketing', 2025, 77000);

select * from sales;


select 
	department,
    sum(case
		when year = 2024 then amount
        else 0
    end) as sales_2014,
    sum(case
		when year = 2025 then amount
        else 0
    end) as sales_2025
from sales
group by department;

CREATE TABLE students (
    student VARCHAR(50),
    subject VARCHAR(50),
    marks INT
);

INSERT INTO students (student, subject, marks) VALUES
('Ravi', 'Java', 85),
('Ravi', 'Python', 90),
('Ravi', 'MySQL', 80),
('Kiran', 'Java', 75),
('Kiran', 'Python', 88),
('Kiran', 'MySQL', 82),
('Arjun', 'Java', 92),
('Arjun', 'Python', 85),
('Arjun', 'MySQL', 89),
('Priya', 'Java', 88),
('Priya', 'Python', 94),
('Priya', 'MySQL', 91),
('Anil', 'Java', 78),
('Anil', 'Python', 82),
('Anil', 'MySQL', 76),
('Sneha', 'Java', 95),
('Sneha', 'Python', 91),
('Sneha', 'MySQL', 93),
('Rahul', 'Java', 81),
('Rahul', 'Python', 79),
('Rahul', 'MySQL', 85),
('Divya', 'Java', 89),
('Divya', 'Python', 96),
('Divya', 'MySQL', 90),
('Suresh', 'Java', 72),
('Suresh', 'Python', 80),
('Suresh', 'MySQL', 75),
('Meena', 'Java', 91),
('Meena', 'Python', 87),
('Meena', 'MySQL', 94),
('Vijay', 'Java', 84),
('Vijay', 'Python', 89),
('Vijay', 'MySQL', 86),
('Pooja', 'Java', 93),
('Pooja', 'Python', 95),
('Pooja', 'MySQL', 92),
('Ramesh', 'Java', 77),
('Ramesh', 'Python', 83),
('Ramesh', 'MySQL', 79),
('Lakshmi', 'Java', 86),
('Lakshmi', 'Python', 90),
('Lakshmi', 'MySQL', 88),
('Manoj', 'Java', 80),
('Manoj', 'Python', 76),
('Manoj', 'MySQL', 84),
('Kavya', 'Java', 94),
('Kavya', 'Python', 92),
('Kavya', 'MySQL', 96),
('Prakash', 'Java', 73),
('Prakash', 'Python', 78),
('Prakash', 'MySQL', 81),
('Swathi', 'Java', 90),
('Swathi', 'Python', 93),
('Swathi', 'MySQL', 89),
('Naveen', 'Java', 82),
('Naveen', 'Python', 86),
('Naveen', 'MySQL', 80),
('Asha', 'Java', 96),
('Asha', 'Python', 94),
('Asha', 'MySQL', 97),
('Ganesh', 'Java', 79),
('Ganesh', 'Python', 81),
('Ganesh', 'MySQL', 77),
('Keerthi', 'Java', 88),
('Keerthi', 'Python', 90),
('Keerthi', 'MySQL', 92),
('Mahesh', 'Java', 74),
('Mahesh', 'Python', 79),
('Mahesh', 'MySQL', 83),
('Nisha', 'Java', 91),
('Nisha', 'Python', 89),
('Nisha', 'MySQL', 95),
('Rohit', 'Java', 85),
('Rohit', 'Python', 87),
('Rohit', 'MySQL', 90),
('Deepa', 'Java', 87),
('Deepa', 'Python', 93),
('Deepa', 'MySQL', 91),
('Venkat', 'Java', 76),
('Venkat', 'Python', 82),
('Venkat', 'MySQL', 78),
('Shalini', 'Java', 92),
('Shalini', 'Python', 96),
('Shalini', 'MySQL', 94),
('Ajay', 'Java', 83),
('Ajay', 'Python', 80),
('Ajay', 'MySQL', 85),
('Neha', 'Java', 89),
('Neha', 'Python', 91),
('Neha', 'MySQL', 93),
('Sanjay', 'Java', 71),
('Sanjay', 'Python', 77),
('Sanjay', 'MySQL', 74),
('Harini', 'Java', 95),
('Harini', 'Python', 97),
('Harini', 'MySQL', 94),
('Varun', 'Java', 81),
('Varun', 'Python', 85),
('Varun', 'MySQL', 88),
('Swamy', 'Java', 78),
('Swamy', 'Python', 84),
('Swamy', 'MySQL', 80),
('Bhavya', 'Java', 93);


select * from students;

select
	student,
    max(case
		when subject='Java' then marks
        end) as Java,
	max(case
		when subject='Python' then marks
        end) as Python,
	max(case
		when subject='MySQL' then marks
        end) as MySQL
from students
group by student;

-- unpivot
CREATE TABLE student_marks (
    student VARCHAR(50),
    java INT,
    python INT,
    mysql INT
);

INSERT INTO student_marks (student, java, python, mysql) VALUES
('Ravi', 85, 90, 80),
('Kiran', 75, 88, 82),
('Arjun', 92, 85, 89),
('Priya', 88, 94, 91),
('Anil', 78, 82, 76),
('Sneha', 95, 91, 93),
('Rahul', 81, 79, 85),
('Divya', 89, 96, 90),
('Suresh', 72, 80, 75),
('Meena', 91, 87, 94),
('Vijay', 84, 89, 86),
('Pooja', 93, 95, 92),
('Ramesh', 77, 83, 79),
('Lakshmi', 86, 90, 88),
('Manoj', 80, 76, 84),
('Kavya', 94, 92, 96),
('Prakash', 73, 78, 81),
('Swathi', 90, 93, 89),
('Naveen', 82, 86, 80),
('Asha', 96, 94, 97),
('Ganesh', 79, 81, 77),
('Keerthi', 88, 90, 92),
('Mahesh', 74, 79, 83),
('Nisha', 91, 89, 95),
('Rohit', 85, 87, 90),
('Deepa', 87, 93, 91),
('Venkat', 76, 82, 78),
('Shalini', 92, 96, 94),
('Ajay', 83, 80, 85),
('Neha', 89, 91, 93),
('Sanjay', 71, 77, 74),
('Harini', 95, 97, 94),
('Varun', 81, 85, 88),
('Bhavya', 93, 90, 95),
('Tarun', 78, 84, 80),
('Anusha', 90, 92, 89),
('Mohan', 82, 79, 86),
('Sowmya', 96, 95, 93),
('Ravi Kumar', 87, 88, 91),
('Karthik', 80, 85, 83),
('Swetha', 92, 94, 96),
('Chandra', 75, 81, 78),
('Deepak', 84, 86, 89),
('Pavani', 91, 93, 90),
('Naresh', 77, 80, 82),
('Teja', 89, 87, 92),
('Harsha', 86, 91, 88),
('Sandeep', 79, 83, 85),
('Anjali', 94, 96, 95),
('Rakesh', 81, 78, 84),
('Shreya', 90, 89, 93),
('Vamsi', 76, 85, 80),
('Bhanu', 88, 92, 87),
('Sravani', 93, 95, 91),
('Nikhil', 82, 84, 86),
('Akash', 85, 88, 90),
('Madhavi', 91, 90, 94),
('Raghu', 73, 79, 77),
('Preethi', 96, 93, 95),
('Chaitanya', 87, 85, 89),
('Padmini', 89, 94, 92),
('Surya', 80, 82, 85),
('Keerthana', 92, 91, 96),
('Lokesh', 78, 80, 83),
('Sushma', 94, 97, 95),
('Raju', 75, 77, 81),
('Mounika', 90, 93, 92),
('Sai', 86, 88, 84),
('Varsha', 95, 91, 96),
('Abhishek', 83, 86, 88),
('Hema', 89, 92, 90),
('Ranjith', 77, 82, 79),
('Divakar', 81, 85, 87),
('Manasa', 93, 94, 91),
('Gopi', 74, 78, 80),
('Sandhya', 92, 95, 93),
('Pranav', 88, 87, 90),
('Bhargav', 80, 83, 85),
('Kalyan', 85, 89, 86),
('Sirisha', 96, 94, 97),
('Uday', 79, 81, 84),
('Nandini', 91, 96, 92),
('Vivek', 84, 80, 88),
('Madhuri', 90, 92, 95),
('Rohini', 87, 89, 91),
('Dinesh', 76, 83, 80),
('Sanjana', 94, 91, 96),
('Abhinav', 82, 86, 85),
('Kiran Kumar', 88, 90, 87),
('Pallavi', 93, 96, 94),
('Srinivas', 78, 82, 81),
('Reshma', 90, 94, 92),
('Ravi Teja', 85, 87, 89),
('Akhil', 81, 84, 86),
('Bhargavi', 95, 93, 96),
('Mahendra', 73, 80, 78),
('Lavanya', 92, 95, 91),
('Chandana', 89, 91, 94),
('Praveen', 80, 85, 82),
('Sushanth', 87, 88, 90),
('Gayathri', 94, 96, 95),
('Venkatesh', 77, 81, 83),
('Mouni', 91, 89, 93),
('Rithvik', 86, 90, 88),
('Aarav', 93, 95, 97),
('Ishita', 89, 92, 94);


select * from student_marks;

SELECT student, 'Java' AS subject, java AS marks
FROM student_marks

UNION ALL

SELECT student, 'Python', python
FROM student_marks

UNION ALL

SELECT student, 'MySQL', mysql
FROM student_marks;

