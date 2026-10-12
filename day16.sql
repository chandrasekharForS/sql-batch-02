create database relations_db;

use relations_db;

-- relations
-- one to one
-- one to many
-- many to many

-- one to one

-- one row in TableA will refer one row in TableB.
-- parent(master) table, child(details) table
-- person -- passport
-- employee -- address
-- person(id, name, country)
-- passport(id, passport_id, valid_years)

create table persons(
	person_id int primary key auto_increment,
    person_name varchar(50) not null,
    country varchar(40)
);

create table passport(
	id int primary key auto_increment,
    passport_id varchar(100) not null,
    valid_years int,
    person_id int not null unique,
    foreign key(person_id) references persons(person_id)
);

INSERT INTO persons (person_name, country) VALUES
('Rajesh Kumar', 'India'),
('Priya Sharma', 'India'),
('Arjun Reddy', 'India'),
('Sneha Patel', 'India'),
('Vikram Singh', 'India'),
('Ananya Rao', 'India'),
('Kiran Das', 'India'),
('Meena Iyer', 'India'),
('Rohit Verma', 'India'),
('Kavya Nair', 'India');

INSERT INTO passport (passport_id, valid_years, person_id) VALUES
('P9876543', 10, 1),
('P8765432', 10, 2),
('P7654321', 10, 3),
('P6543210', 10, 4),
('P5432109', 10, 5),
('P4321098', 10, 6),
('P3210987', 10, 7),
('P2109876', 10, 8),
('P1098765', 10, 9),
('P9087654', 10, 10);

select * from persons;

select * from passport;

INSERT INTO passport (passport_id, valid_years, person_id) VALUES
('P9876555', 10, 13);

INSERT INTO passport (passport_id, valid_years, person_id) VALUES
('P9876555', 10, 5);

-- one to many
-- one row from TableA refers to many rows from TableB
-- departments -- employees
-- categories -- products
-- customer -- orders
create table departments(
	dept_id int primary key auto_increment,
    dept_name varchar(50) not null,
    location varchar(30)
);

create table employees(
	emp_id int primary key auto_increment,
    emp_name varchar(50) not null,
    salary decimal(10, 2),
    dept_id int,
    foreign key(dept_id) references departments(dept_id)
);

INSERT INTO departments (dept_name, location) VALUES
('IT', 'Visakhapatnam'),
('HR', 'Bangalore'),
('Finance', 'Chennai'),
('Marketing', 'Hyderabad'),
('Operations', 'Pune');

INSERT INTO employees (emp_name, salary, dept_id) VALUES
-- IT Department
('Rajesh Kumar', 75000.00, 1),
('Priya Sharma', 68000.00, 1),
('Arjun Reddy', 82000.00, 1),
('Sneha Patel', 71000.00, 1),
('Vikram Singh', 90000.00, 1),

-- HR Department
('Ananya Rao', 55000.00, 2),
('Kiran Das', 58000.00, 2),
('Meena Iyer', 62000.00, 2),
('Rohit Verma', 57000.00, 2),
('Kavya Nair', 60000.00, 2),

-- Finance Department
('Suresh Babu', 72000.00, 3),
('Divya Reddy', 65000.00, 3),
('Manoj Kumar', 78000.00, 3),
('Pooja Singh', 69000.00, 3),
('Naveen Rao', 74000.00, 3),

-- Marketing Department
('Amit Sharma', 60000.00, 4),
('Lakshmi Devi', 58000.00, 4),
('Rahul Mehta', 67000.00, 4),
('Swathi Reddy', 63000.00, 4),
('Gopal Krishna', 59000.00, 4),

-- Operations Department
('Ramesh Naidu', 70000.00, 5),
('Neha Gupta', 64000.00, 5),
('Harish Kumar', 73000.00, 5),
('Asha Menon', 61000.00, 5),
('Vijay Rao', 68000.00, 5);


INSERT INTO employees (emp_name, salary, dept_id) VALUES
('Anish Kumar', 75000.00, 7);

INSERT INTO employees (emp_name, salary, dept_id) VALUES
('Anish Kumar', 75000.00, null);

select * from departments;

select * from employees;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert 5 rows into customers 
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Anish Kumar',   'Hyderabad'),
(2, 'Ravi Sharma',  'Delhi'),
(3, 'Priya Verma',  'Mumbai'),
(4, 'Amit Patel',   'Ahmedabad'),
(5, 'Neha Singh',   'Bengaluru');

-- Insert 50 rows into orders
INSERT INTO orders (order_id, order_date, amount, customer_id) VALUES
-- Customer 1
(1,  '2024-01-05', 1200.50, 1),
(2,  '2024-01-12', 850.00,  1),
(3,  '2024-01-20', 430.75,  1),
(4,  '2024-02-02', 2200.00, 1),
(5,  '2024-02-10', 999.99,  1),
(6,  '2024-02-18', 1500.00, 1),
(7,  '2024-03-01', 275.25,  1),
(8,  '2024-03-10', 1800.00, 1),
(9,  '2024-03-18', 640.40,  1),
(10, '2024-03-25', 2100.00, 1),

-- Customer 2
(11, '2024-01-03', 500.00,  2),
(12, '2024-01-15', 750.50,  2),
(13, '2024-01-28', 1300.00, 2),
(14, '2024-02-05', 220.00,  2),
(15, '2024-02-14', 980.75,  2),
(16, '2024-02-22', 1600.00, 2),
(17, '2024-03-04', 450.00,  2),
(18, '2024-03-12', 1999.99, 2),
(19, '2024-03-19', 870.30,  2),
(20, '2024-03-27', 1100.00, 2),

-- Customer 3
(21, '2024-01-06', 300.00,  3),
(22, '2024-01-16', 680.00,  3),
(23, '2024-01-26', 1450.00, 3),
(24, '2024-02-04', 2500.00, 3),
(25, '2024-02-11', 799.99,  3),
(26, '2024-02-19', 1200.00, 3),
(27, '2024-03-02', 560.75,  3),
(28, '2024-03-11', 1750.00, 3),
(29, '2024-03-20', 920.50,  3),
(30, '2024-03-28', 1340.00, 3),

-- Customer 4
(31, '2024-01-08', 400.00,  4),
(32, '2024-01-18', 900.00,  4),
(33, '2024-01-29', 1600.00, 4),
(34, '2024-02-06', 210.00,  4),
(35, '2024-02-15', 1150.00, 4),
(36, '2024-02-23', 1890.00, 4),
(37, '2024-03-05', 620.40,  4),
(38, '2024-03-14', 2300.00, 4),
(39, '2024-03-22', 780.00,  4),
(40, '2024-03-29', 990.00,  4),

-- Customer 5
(41, '2024-01-09', 520.00,  5),
(42, '2024-01-19', 880.00,  5),
(43, '2024-01-30', 1400.00, 5),
(44, '2024-02-07', 260.00,  5),
(45, '2024-02-16', 1020.50, 5),
(46, '2024-02-24', 1700.00, 5),
(47, '2024-03-06', 699.99,  5),
(48, '2024-03-15', 2000.00, 5),
(49, '2024-03-23', 850.75,  5),
(50, '2024-03-30', 1250.00, 5);

-- 
select 
	o.order_id,
	c.name,
    c.city,
    o.order_date,
    o.amount
from customers as c 
join orders as o
on c.customer_id = o.customer_id;

select
	c.name,
    sum(o.amount) as total_amount
from customers as c
join orders as o
on c.customer_id = o.customer_id
group by c.name;

-- COUNT – Number of Orders per Customer

select
	c.name,
    count(*) as no_of_customers
from customers as c
join orders as o
on c.customer_id = o.customer_id
group by c.name;

-- HAVING – Customers Who Spent More Than 10,000

select
	c.name,
    sum(o.amount) as total_amount
from customers as c
join orders as o
on c.customer_id = o.customer_id
group by c.name
having total_amount > 10000;

-- Monthly Sales Report
select
	month(order_date) as mont,
    sum(amount) as amount
from orders
group by mont;

-- Many-to-Many (M : N) Relationship
-- many rows from TableA will be refer to many rows from TableB
-- students -- courses

create table students(
	student_id int primary key auto_increment,
    student_name varchar(50) not null,
    city varchar(30)
);

create table courses(
	course_id int primary key auto_increment,
    course_name varchar(50) not null,
    duration int
);

create table student_course(
	student_id int,
    course_id int,
    primary key(student_id, course_id),
    foreign key(student_id) references students(student_id),
    foreign key(course_id) references courses(course_id)
);

insert into students(student_name, city)
values('Simran', 'Bhuvaneswar'),('Pavan', 'Bangalore');


insert into courses(course_name, duration) values('PFS', 6), ('JFS', 6), ('Data Analysis', 4), ('Data Science', 5);

select * from students;

select * from courses;

insert into student_course values(1, 1), (1, 2), (1, 4), (2, 2); 

