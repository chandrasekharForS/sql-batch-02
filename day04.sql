-- DDL
-- create
CREATE DATABASE university;

use university;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL
);

-- alter
-- add new
-- modify existing
-- deleting

-- Add a new column phone_number with varchar and size 15:

alter table students
add column phone_number varchar(15);

-- Modify an existing column email to increase its size to 70:

alter table students
modify column email varchar(70);

-- Drop a column phone_number

alter table students
drop column phone_number; 

-- Rename a table students as university_students
alter table students
rename to university_students;

desc students;

desc university_students;

-- drop

drop table university_students;


drop database university;

desc students;

create database university;

use university;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrollment_date DATE NOT NULL
);

-- rename

rename table students to student_info;

desc students;

desc student_info;

-- insert 10 rows to the student_info table
INSERT INTO student_info
(first_name, last_name, email, enrollment_date)
VALUES
('Ravi', 'Kumar', 'ravi.kumar@gmail.com', '2026-06-01'),
('Anjali', 'Sharma', 'anjali.sharma@gmail.com', '2026-06-03'),
('Kiran', 'Reddy', 'kiran.reddy@gmail.com', '2026-06-05'),
('Priya', 'Nair', 'priya.nair@gmail.com', '2026-06-07'),
('Arjun', 'Menon', 'arjun.menon@gmail.com', '2026-06-10'),
('Sneha', 'Patel', 'sneha.patel@gmail.com', '2026-06-12'),
('Vikram', 'Singh', 'vikram.singh@gmail.com', '2026-06-15'),
('Divya', 'Rao', 'divya.rao@gmail.com', '2026-06-18'),
('Rahul', 'Verma', 'rahul.verma@gmail.com', '2026-06-20'),
('Meena', 'Iyer', 'meena.iyer@gmail.com', '2026-06-22');

-- truncate

truncate table student_info;

delete from student_info;

select * from student_info;

desc student_info;

-- index
create index idx_first_name_students on student_info(first_name);

drop index idx_first_name_students on student_info;

-- adding foreign key constraint by alter command

create table departments(
	dept_id int primary key auto_increment,
    dept_name varchar(50) not null unique,
    location varchar(50)
);

create table employees(
	emp_id int primary key auto_increment,
    emp_name varchar(50) not null unique,
    salary double
);

-- to add dept_id in the employees table

alter table employees
add column dept_id int;

alter table employees
add constraint fk_dept_id_employees
foreign key(dept_id) references departments(dept_id);

desc employees;



