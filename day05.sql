-- DML (insert, update, delete)
create database dml_db;

use dml_db;

CREATE TABLE employees (
    emp_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    emp_age INT CHECK(emp_age >= 18),
    emp_position VARCHAR(50)
);

-- insert
INSERT INTO employees (emp_name, emp_age, emp_position)
VALUES ('Anish', 29, 'Manager');

INSERT INTO employees (emp_name, emp_age, emp_position)
VALUES
    ('Ramesh', 45, 'CEO'),
    ('Priya', 32, 'HR Manager'),
    ('Kiran', 28, 'Software Engineer'),
    ('Sneha', 26, 'Accountant'),
    ('Arjun', 35, 'Project Manager');

select * from employees;

insert into employees values('Rajiv', 26, 'Accountant');

insert into employees values(null, 'Rajiv', 26, 'Accountant');

INSERT INTO employees
VALUES
    (NULL, 'Vijay', 40, 'General Manager'),
    (NULL, 'Meena', 27, 'Developer'),
    (NULL, 'Rahul', 30, 'Tester');


select * from employees;

INSERT INTO employees
SET
    emp_name = 'Divya',
    emp_age = 29,
    emp_position = 'Software Developer';

select * from employees;

CREATE TABLE old_employees (
    emp_name VARCHAR(50),
    emp_age INT,
    emp_position VARCHAR(50)
);

INSERT INTO old_employees (emp_name, emp_age, emp_position)
VALUES
    ('Karthik', 32, 'Developer'),
    ('Swathi', 29, 'Tester');
    
select * from employees;

insert into employees(emp_name, emp_age, emp_position)
select * from old_employees;

insert into employees(emp_name) values ('Prabhakar'), ('Rani');

select * from employees;

-- update
update employees set emp_name = 'Anish Kumar'
where emp_id = 1;

update employees set emp_name = 'Anish Kumar'
where emp_name = 'Anish'; -- never execute

update employees set emp_name = 'Ramesh Kumar', emp_age = 46
where emp_id = 2;

UPDATE employees
SET emp_position = 'Senior Manager'
WHERE emp_id = 1;

UPDATE employees
SET emp_position = 'Manager',
    emp_age = 30
WHERE emp_id = 1;

UPDATE employees
SET emp_position = 'Project Manager'
WHERE emp_name = 'Anish Kumar';

-- , increase the age of employees whose age is less than 30:

update employees set emp_age = emp_age + 1
where emp_age < 30;

UPDATE employees
SET emp_position = 'Senior Developer'
WHERE emp_position = 'Developer';


select * from employees;

select * from employees
where emp_position = 'Senior Developer';


UPDATE employees
SET emp_position = 'Senior Manager'
WHERE emp_age >= 30
AND emp_position = 'Tester';

UPDATE employees
SET emp_position = 'Technical Staff'
WHERE emp_position = 'Developer'
   OR emp_position = 'Tester'
   OR emp_position = 'Accountant';

UPDATE employees
SET emp_position = 'Technical Staff'
WHERE emp_position in ('Developer', 'Tester', 'Accountant');
   
UPDATE employees
SET emp_position = 'Junior Employee'
WHERE emp_age >= 25 and emp_age <= 30;

UPDATE employees
SET emp_position = 'Junior Employee'
WHERE emp_age between 25 and 30;

UPDATE employees
SET emp_position = 'Team Member'
WHERE emp_name LIKE 'A%';

UPDATE employees
SET emp_position = 'Not Assigned'
WHERE emp_position is NULL;

-- delete
delete from employees
where emp_id = 12;

select * from employees;


