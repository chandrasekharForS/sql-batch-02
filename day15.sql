-- triggers
-- procedure
-- procedures will be executed with call
-- triggers automatically executes

create database triggers_db;
use triggers_db;

CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

insert into employees(firstname, lastname,salary) values
('Anish', 'Menon', 500000.00); 

update employees set salary = 700000.00
where employeeid = 1;


CREATE TABLE employee_audit (
    AuditID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    OldSalary DECIMAL(10, 2),
    NewSalary DECIMAL(10, 2),
    UpdateDate DATETIME
);

select * from employees;

select * from employee_audit;

delimiter $$;

create trigger before_employee_insert
before update on employees
for each row
begin
	insert into employee_audit (employeeid, OldSalary, NewSalary, UpdateDate)
    values(old.employeeid, old.salary, new.salary, now());
end $$;

delimiter ;

insert into employees(firstname, lastname,salary) values
('Divya', 'Giri', -600000.00);

select * from employees;

delimiter $$;

create trigger  before_employee_insert_salary
before insert on employees
for each row
begin
	if new.salary < 0 then
		signal sqlstate '45000'
        set message_text = 'Salary cannot be negative';
    end if;
end $$;

delimiter ;
