create database transactions_db;
use transactions_db;

-- transactions

-- transaction can be commited or rolled back.

-- by defauld mysql commits the transaction with every command.

-- all DDL commands will automatically commits the transacation

drop table accounts;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts VALUES (101, 'Ravi', 50000);

INSERT INTO accounts VALUES(102, 'Kiran', 30000);

select * from accounts;

start transaction;

UPDATE accounts
SET balance = balance - 10000
WHERE account_id = 101;

UPDATE accounts
SET balance = balance + 10000
WHERE account_id = 102;

commit;

select * from accounts;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 5000
WHERE account_id = 101;

-- rollback;
commit;

select * from accounts;

-- commit;
rollback;


START TRANSACTION;

UPDATE accounts
SET balance = balance + 5000
WHERE account_id = 101;

delete from accounts
where account_id = 102;

rollback;

select * from accounts;

-- savepoint
select * from accounts;


start transaction;

savepoint s1;

-- insert
insert into accounts values(103, 'Rajiv', 10000);

-- update
update accounts set balance = balance + 10000
where account_id = 102;

savepoint s2;

-- delete
delete from accounts
where account_id = 101;

rollback to s2;

commit;

select * from accounts;

SELECT @@transaction_isolation;

select @@autocommit;


set @@autocommit = 0;