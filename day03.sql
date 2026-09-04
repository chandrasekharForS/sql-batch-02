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






