drop database first_db;

create database first_db;

use first_db;

-- employees
-- emp_id -- 1, 2, 3 -- int
-- emp_name-- "Ramesh", "Divya" -- varchar
-- salary -- 75000.50 -- double or decimal

create table employees(
	emp_id int,
    emp_name varchar(30),
    salary double
);

insert into employees values(1, 'Rajesh', 700000.00);

insert into employees values(2, 'Vidhya', 800000.00);
insert into employees values(3, 'Anish', 200000.00);
insert into employees values(4, 'Veena', 1000000.00);
insert into employees values(5, 'Ramesh', 800000.00);

select * from employees;
