-- self join

create database selfjoin_db;
use selfjoin_db;

create table employees(
	employee_id int primary key auto_increment,
    employee_name varchar(50) not null,
    salary double,
    manager_id int,
    foreign key(manager_id) references employees(employee_id)
);

insert into employees(employee_name, salary, manager_id) values
('Anish', 100000.00, null);
insert into employees(employee_name, salary, manager_id) values
('Rajesh', 80000.00, 1);
insert into employees(employee_name, salary, manager_id) values
('Divya', 60000.00, 1);
insert into employees(employee_name, salary, manager_id) values
('Rames', 80000.00, 1);
insert into employees(employee_name, salary, manager_id) values
('Suresh', 40000.00, 2);

drop table employees;

CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(50),
	manager_id INT,
	FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO employees VALUES (1, 'John', NULL);
INSERT INTO employees VALUES (2, 'Jane', 1);
INSERT INTO employees VALUES (3, 'Bob', 2);
INSERT INTO employees VALUES (4, 'Alice', 1);
INSERT INTO employees VALUES (5, 'Charlie', 3);
INSERT INTO employees VALUES (6, 'Ramesh', 2);

select * from employees;

select 
e.employee_id,
e.employee_name as employee,
m.employee_name as manager
from employees as e join employees as m
on e.manager_id = m.employee_id;

select 
e.employee_id,
e.employee_name as employee,
m.employee_name as manager
from employees as e left join employees as m
on e.manager_id = m.employee_id;

select 
e.employee_id,
e.employee_name as employee,
m.employee_name as manager
from employees as e left join employees as m
on e.manager_id = m.employee_id
where m.manager_id is null;

-- Find employees who report directly to John.
select 
	e.employee_id,
	e.employee_name as employee,
	m.employee_name as manager
from employees as e join employees as m
on e.manager_id = m.employee_id
where m.employee_name = 'John';

-- Fine employees who have the same manager
SELECT 
    e1.employee_name AS employee1,
    e2.employee_name AS employee2,
    e1.manager_id
FROM employees e1
JOIN employees e2
    ON e1.manager_id = e2.manager_id
WHERE e1.employee_id < e2.employee_id;

-- dislay the manager and no of employees reporting to them.

select
	m.employee_name,
    count(e.employee_name) as no_of_employees
from employees as e join employees as m
on e.manager_id = m.employee_id
group by m.employee_name;

-- Find managers who manage more than one employee
select
	m.employee_name,
    count(e.employee_name) as no_of_employees
from employees as e join employees as m
on e.manager_id = m.employee_id
group by m.employee_name
having no_of_employees > 1;

-- find the employees who are not managers
select e.employee_name
from employees as e
where not exists(select * from employees m 
where m.manager_id = e.employee_id);

