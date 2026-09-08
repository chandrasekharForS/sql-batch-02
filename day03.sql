-- Constraints

drop database constraints_db;

create database constraints_db;

use constraints_db;
-- null
-- by default all the columns are null

create table employees(
	emp_id int,
    emp_name varchar(50),
    salary double
);

insert into employees values(1, 'Rajesh', 900000.00);

insert into employees values(2, 'Anish', null);

insert into employees values(3, null, 1000000.00);

insert into employees values(null, 'Radha', null);

insert into employees values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vijay');


select * from employees;

-- not null

drop table employees;

create table employees(
	emp_id int not null,
    emp_name varchar(50) not null,
    salary double
);

insert into employees values(1, 'Rajesh', 900000.00);

insert into employees values(2, 'Anish', null);

insert into employees values(3, null, 1000000.00);

insert into employees values(null, 'Radha', null);

insert into employees values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vinod');

select * from employees;
-- example
CREATE TABLE customers (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(200) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

INSERT INTO customers
(id, name, email, phone, address, city, state, country, age, salary)
VALUES
(1, 'Ravi Kumar', 'ravi@gmail.com', '9876543210', 'MVP Colony', 'Visakhapatnam', 'Andhra Pradesh', 'India', 28, 45000.00),
(2, 'Priya Sharma', 'priya@gmail.com', '9876543211', 'Dwaraka Nagar', 'Visakhapatnam', 'Andhra Pradesh', 'India', 25, 42000.00),
(3, 'Arjun Reddy', 'arjun@gmail.com', '9876543212', 'Gajuwaka', 'Visakhapatnam', 'Andhra Pradesh', 'India', 32, 58000.00),
(4, 'Sneha Rao', 'sneha@gmail.com', '9876543213', 'Seethammadhara', 'Visakhapatnam', 'Andhra Pradesh', 'India', 27, 48000.00),
(5, 'Kiran Kumar', 'kiran@gmail.com', '9876543214', 'Maddilapalem', 'Visakhapatnam', 'Andhra Pradesh', 'India', 35, 65000.00),
(6, 'Anjali Devi', 'anjali@gmail.com', '9876543215', 'Akkayyapalem', 'Visakhapatnam', 'Andhra Pradesh', 'India', 30, 52000.00),
(7, 'Suresh Babu', 'suresh@gmail.com', '9876543216', 'Madhurawada', 'Visakhapatnam', 'Andhra Pradesh', 'India', 40, 72000.00),
(8, 'Lakshmi Priya', 'lakshmi@gmail.com', '9876543217', 'Rushikonda', 'Visakhapatnam', 'Andhra Pradesh', 'India', 26, 46000.00),
(9, 'Vamsi Krishna', 'vamsi@gmail.com', '9876543218', 'Pendurthi', 'Visakhapatnam', 'Andhra Pradesh', 'India', 29, 50000.00),
(10, 'Divya Rani', 'divya@gmail.com', '9876543219', 'Kancharapalem', 'Visakhapatnam', 'Andhra Pradesh', 'India', 31, 55000.00);



INSERT INTO customers
(id, name, email, phone, address, city, state, country, age, salary)
VALUES
(11, NULL, 'test@gmail.com', '9876543220', 'MVP Colony', 'Visakhapatnam',
 'Andhra Pradesh', 'India', 28, 45000.00);
 
 INSERT INTO customers
(id, name, email, phone, address, city, state, country, age, salary)
VALUES
(12, 'Rahul Kumar', NULL, '9876543221', 'Gajuwaka', 'Visakhapatnam',
 'Andhra Pradesh', 'India', 30, 50000.00);
 
INSERT INTO customers
(id, name, email, phone, address, city, state, country, age, salary)
VALUES
(13, 'Sanjay Rao', 'sanjay@gmail.com', '9876543222', 'Maddilapalem',
 'Visakhapatnam', 'Andhra Pradesh', 'India', 35, NULL);
 
INSERT INTO customers
(id, name, email, phone, address, city, state, country, age, salary)
VALUES
(14, 'Meena Devi', 'meena@gmail.com', NULL, 'Dwaraka Nagar',
 'Visakhapatnam', 'Andhra Pradesh', 'India', 26, 40000.00);

INSERT INTO customers
(id, name, email, phone, address, city, state, country, age, salary)
VALUES
(15, 'Karthik Reddy', 'karthik@gmail.com', '9876543224', 'Rushikonda',
 NULL, 'Andhra Pradesh', 'India', 29, 48000.00);
 
 -- unique
 

INSERT INTO customers
(id, name, phone, address, city, state, country, age, salary)
VALUES
(11, 'Rahul Kumar', '9876543220', 'MVP Colony',
 'Visakhapatnam', 'Andhra Pradesh', 'India', 28, 45000.00);

INSERT INTO customers
(id, name, email, phone, address, city, state, country, age)
VALUES
(12, 'Anjali Sharma', 'anjali@gmail.com', '9876543221',
 'Dwaraka Nagar', 'Visakhapatnam', 'Andhra Pradesh', 'India', 30);


select * from customers;


-- unique
-- will not allow duplicate values
-- it will allow null once

drop table employees;

create table employees(
	emp_id int not null unique,
    emp_name varchar(50) not null unique,
    salary double
);

desc employees;

insert into employees values(1, 'Rajesh', 900000.00);

insert into employees values(2, 'Anish', null);

insert into employees values(3, null, 1000000.00);

insert into employees values(null, 'Radha', null);

insert into employees values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vinod');

select * from employees;


CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    roll_number VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    course VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

desc students;

INSERT INTO students
(student_id, student_name, roll_number, email, course, age, city)
VALUES
(1, 'Ravi Kumar', 'STU101', 'ravi@gmail.com', 'Java', 21, 'Visakhapatnam'),
(2, 'Priya Sharma', 'STU102', 'priya@gmail.com', 'Python', 22, 'Vijayawada'),
(3, 'Arjun Reddy', 'STU103', 'arjun@gmail.com', 'Java', 20, 'Guntur'),
(4, 'Sneha Rao', 'STU104', 'sneha@gmail.com', 'Python', 23, 'Nellore');


INSERT INTO students
(student_id, student_name, roll_number, email, course, age, city)
VALUES
(5, 'Kiran Kumar', 'STU101', 'kiran@gmail.com', 'Java', 21, 'Kakinada');

INSERT INTO students
(student_id, student_name, roll_number, email, course, age, city)
VALUES
(6, 'Anjali Devi', 'STU105', 'ravi@gmail.com', 'Python', 22, 'Rajahmundry');


select * from students;

-- unique is not only the constraint
-- unique will create an index for your table

-- primary key
-- unique + not null

drop table employees;

create table employees(
	emp_id int primary key,
    emp_name varchar(50) not null unique,
    salary double
);

insert into employees values(1, 'Rajesh', 900000.00);

insert into employees values(2, 'Anish', null);

insert into employees values(3, null, 1000000.00);

insert into employees values(null, 'Radha', null);

insert into employees values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vijay');

insert into employees(emp_id, emp_name) values(4, 'Vinod');

select * from employees;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    brand VARCHAR(50),
    description VARCHAR(200)
);


desc products;

INSERT INTO products
(product_id, product_name, category, price, stock, brand, description)
VALUES
(1, 'Laptop', 'Electronics', 55000.00, 10, 'Dell', 'Business laptop'),
(2, 'Smartphone', 'Electronics', 25000.00, 25, 'Samsung', 'Android smartphone'),
(3, 'Headphones', 'Accessories', 2500.00, 50, 'Sony', 'Wireless headphones'),
(4, 'Keyboard', 'Accessories', 1500.00, 30, 'Logitech', 'Mechanical keyboard');


INSERT INTO products
(product_id, product_name, category, price, stock, brand, description)
VALUES
(1, 'Tablet', 'Electronics', 30000.00, 15, 'Lenovo', 'Android tablet');

INSERT INTO products
(product_id, product_name, category, price, stock, brand, description)
VALUES
(NULL, 'Monitor', 'Electronics', 18000.00, 20, 'LG', 'LED monitor');


-- composite primary key

CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    student_name VARCHAR(50),
    course_name VARCHAR(50),
    enrollment_date DATE,
    duration INT,
    fee DECIMAL(10,2),

    PRIMARY KEY (student_id, course_id)
);

INSERT INTO student_courses
(student_id, course_id, student_name, course_name, enrollment_date, duration, fee)
VALUES
(101, 1, 'Ravi Kumar', 'Java', '2026-09-01', 60, 15000.00),
(101, 2, 'Ravi Kumar', 'Python', '2026-09-02', 60, 14000.00),
(102, 1, 'Priya Sharma', 'Java', '2026-09-03', 60, 15000.00),
(102, 3, 'Priya Sharma', 'SQL', '2026-09-04', 30, 8000.00);


INSERT INTO student_courses
(student_id, course_id, student_name, course_name, enrollment_date, duration, fee)
VALUES
(101, 1, 'Ravi Kumar', 'Java', '2026-09-05', 60, 15000.00);

-- foriegn key constraint
-- parent child relation
-- master details relation

-- departments(department_id, department_name, location)

-- employees(employee_id, employee_name, salary, department)

create table departments(
	department_id int primary key,
    department_name varchar(50) not null,
    location varchar(30)
);

show tables;

drop table employees;

create table employees(
	employee_id int primary key,
    employee_name varchar(50) not null,
    salary decimal(10, 2),
    department_name varchar(50)
);

insert into departments values
(1, 'Production', 'Bangalore'),
(2, 'HR', 'Bangalore'),
(3, 'Sales', 'Mumbai');

insert into employees values
(1, 'Rajesh', 900000.00, 'Production'),
(2, 'Anish', 1000000.00, 'Production'),
(3, 'Divya', 1900000.00, 'Accounts'),
(4, 'Ravi', 500000.00, 'HR'),
(5, 'Ramesh', 900000.00, 'Sales'),
(6, 'Ramya', 120000.00, null);

select * from departments;

select * from employees;

-- with foriegn key
-- foriegn key(child) cannot exists without primary key(parent)

drop table departments;

-- master(parent)
create table departments(
	department_id int primary key,
    department_name varchar(50) not null,
    location varchar(30)
);

show tables;

drop table employees;

-- details(child)
create table employees(
	employee_id int primary key,
    employee_name varchar(50) not null,
    salary decimal(10, 2),
    department_id int,
    foreign key (department_id) references departments(department_id)
);

insert into departments values
(1, 'Production', 'Bangalore'),
(2, 'HR', 'Bangalore'),
(3, 'Sales', 'Mumbai');

insert into employees values
(1, 'Rajesh', 900000.00, 1),
(2, 'Anish', 1000000.00, 1);

insert into employees values
(3, 'Divya', 1900000.00, 4);

insert into employees values
(4, 'Ravi', 500000.00, 2),
(5, 'Ramesh', 900000.00, 3),
(6, 'Ramya', 120000.00, null);

select * from departments;

select * from employees;


drop table employees;

drop table departments;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50),
    manager_name VARCHAR(50),
    budget DECIMAL(12,2),
    phone VARCHAR(15),
    status VARCHAR(20)
);


CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    designation VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);


INSERT INTO departments
(department_id, department_name, location, manager_name, budget, phone, status)
VALUES
(101, 'Java', 'Visakhapatnam', 'Ravi Kumar', 500000.00, '9876543210', 'Active'),
(102, 'Python', 'Vijayawada', 'Priya Sharma', 450000.00, '9876543211', 'Active'),
(103, 'Testing', 'Guntur', 'Arjun Reddy', 400000.00, '9876543212', 'Active');


INSERT INTO employees
(employee_id, employee_name, department_id, salary, designation, email, city)
VALUES
(1, 'Suresh Kumar', 101, 55000.00, 'Developer', 'suresh@gmail.com', 'Visakhapatnam'),
(2, 'Anjali Devi', 102, 50000.00, 'Developer', 'anjali@gmail.com', 'Vijayawada');


INSERT INTO employees
(employee_id, employee_name, department_id, salary, designation, email, city)
VALUES
(3, 'Kiran Kumar', 999, 48000.00, 'Developer', 'kiran@gmail.com', 'Guntur');



INSERT INTO employees
(employee_id, employee_name, department_id, salary, designation, email, city)
VALUES
(3, 'Kiran Kumar', NULL, 48000.00, 'Developer', 'kiran@gmail.com', 'Guntur'),
(4, 'Ramesh Babu', NULL, 52000.00, 'Tester', 'ramesh@gmail.com', 'Visakhapatnam'),
(5, 'Lakshmi Devi', NULL, 55000.00, 'Developer', 'lakshmi@gmail.com', 'Vijayawada'),
(6, 'Venkat Rao', NULL, 60000.00, 'Team Lead', 'venkat@gmail.com', 'Guntur'),
(7, 'Meena Kumari', NULL, 47000.00, 'Tester', 'meena@gmail.com', 'Visakhapatnam');

select * from employees;

-- CHECK Constraint

create table orders(
	order_id int primary key,
    customer_name varchar(50) not null unique,
    order_date date,
    order_amount double
);

insert into orders values
(101, 'Rajesh', '2026-07-09', 2850.00),
(102, 'Divya', '2026-07-08', 22850.00),
(103, 'Anish', '2026-07-09', 2050.00);

insert into orders values
(104, 'Priya', '2026-07-19', 2850.00),
(105, 'Mahesh', '2026-07-08', -22850.00),
(106, 'Ramesh', '2026-07-09', 0);

select * from orders;

-- with check constraint




drop table orders;

create table orders(
	order_id int primary key,
    customer_name varchar(50) not null unique,
    order_date date, -- check(order_date = curdate()),
    order_amount double check(order_amount >= 20)
);

insert into orders values
(101, 'Rajesh', '2026-07-09', 2850.00),
(102, 'Divya', '2026-07-08', 22850.00),
(103, 'Anish', '2026-07-09', 2050.00);

insert into orders values
(104, 'Priya', '2026-07-19', 2850.00);

insert into orders values
(105, 'Mahesh', '2026-07-08', -22850.00);

insert into orders values
(106, 'Ramesh', '2026-07-09', 0);

select * from orders;

select now();

select curdate();

drop table employees;

create table employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    salary DECIMAL(10,2) CHECK (salary >= 10000),
    department VARCHAR(30) CHECK (department IN ('IT', 'HR', 'Finance', 'Sales', 'Marketing')),
    experience INT CHECK (experience >= 0)
);


-- correct
insert into employees
values (101, 'Anish', 25, 'Male', 50000.00, 'IT', 3);

insert into employees
values (102, 'Priya', 30, 'Female', 65000.00, 'HR', 6);

insert into employees
values (103, 'Rahul', 28, 'Male', 45000.00, 'Finance', 4);

insert into employees
values (104, 'Sneha', 35, 'Female', 75000.00, 'Marketing', 10);

insert into employees
values (105, 'John', 26, 'Other', 40000.00, 'Sales', 2);


insert into employees
values (106, 'Kiran', 16, 'Male', 30000.00, 'IT', 1);

insert into employees
values (107, 'Ravi', 24, 'M', 35000.00, 'HR', 2);


insert into employees
values (108, 'Divya', 27, 'Female', 8000.00, 'Finance', 3);


insert into employees
values (109, 'Ajay', 29, 'Male', 50000.00, 'Support', 5);


insert into employees
values (110, 'Neha', 31, 'Female', 55000.00, 'Marketing', -2);

-- default

drop table employees;

create table employees(
	employee_id int primary key,
    employee_name varchar(50) not null unique,
    salary decimal(10, 2) check(salary >= 0),
    department varchar(50) default 'IT'
);

insert into employees values(1, 'Mahesh', 1000000.00, 'Production');

insert into employees(employee_id, employee_name, salary) 
values(2, 'Anish', 1200000.00);

select * from employees;

drop table employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Active',
    city VARCHAR(50) DEFAULT 'Visakhapatnam'
);

INSERT INTO employees
(employee_id, employee_name, department, salary)
VALUES
(1, 'Ravi Kumar', 'Java', 45000.00);

drop table products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    stock INT DEFAULT 0
);

INSERT INTO products
(product_id, product_name, price)
VALUES
(1, 'Keyboard', 1500.00);


select * from products;

select * from employees;
-- auto increment
drop table customers;
create table customers(
	customer_id int primary key auto_increment,
    customer_name varchar(50) not null unique,
    bill_amount double
);

insert into customers values(22, 'Rajesh', 4576.00);

insert into customers(customer_name, bill_amount) values('Rajesh', 4576.00);

insert into customers(customer_name, bill_amount) values('Anish', 1800.00);

insert into customers(customer_name, bill_amount) values('Nandhini', 25564.00);

insert into customers values(22, 'Mahesh', 2000.00);

insert into customers(customer_name, bill_amount) values('Kiran', 25564.00);

select * from customers;

-- change the initial value

drop table customers;
create table customers(
	customer_id int primary key auto_increment,
    customer_name varchar(50) not null unique,
    bill_amount double
);

alter table customers
auto_increment = 101;

insert into customers values(22, 'Rajesh', 4576.00);

insert into customers(customer_name, bill_amount) values('Rajesh', 4576.00);

insert into customers(customer_name, bill_amount) values('Anish', 1800.00);

insert into customers(customer_name, bill_amount) values('Nandhini', 25564.00);

insert into customers values(22, 'Mahesh', 2000.00);

insert into customers(customer_name, bill_amount) values('Kiran', 25564.00);

select * from customers;

show table status like 'customers';

delete from customers
where customer_id = 102;

 
insert into customers values(102, 'Suresh', 2000.00);

select * from customers;

-- table level constraints

drop table departments;

CREATE TABLE departments (
    department_id INT primary key,
    department_name VARCHAR(50) NOT NULL
);

drop table employees;

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    email VARCHAR(100),
    department_id INT,
    age INT,
    salary DECIMAL(10,2),
    status VARCHAR(20),
    -- Table-level constraints
    CONSTRAINT pk_employee
        PRIMARY KEY (employee_id),

    CONSTRAINT uq_employee_email
        UNIQUE (email),

    CONSTRAINT chk_employee_age
        CHECK (age >= 18),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

drop table employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
    department ENUM('Java', 'Python', 'Testing'),
    status ENUM('Active', 'Inactive')
);

show tables;

desc employees;

INSERT INTO employees
(employee_id, employee_name, gender, department, status)
VALUES
(1, 'Ravi Kumar', 'Male', 'Java', 'Active');

INSERT INTO employees
(employee_id, employee_name, gender, department, status)
VALUES
(2, 'Priya Sharma', 'Female', 'Python', 'Active');


INSERT INTO employees
(employee_id, employee_name, gender, department, status)
VALUES
(3, 'Arjun Kumar', 'Male', 'JavaScript', 'Active');



select * from employees;






 















