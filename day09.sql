create database date_functions_db;
use date_functions_db;

-- 1. Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    date_of_birth DATE
);

INSERT INTO Customers VALUES
(1, 'John Doe', 'john.doe@example.com', '1990-05-15'),
(2, 'Jane Smith', 'jane.smith@example.com', '1985-07-20'),
(3, 'Emily Brown', 'emily.brown@example.com', '2000-01-10'),
(4, 'Michael Green', 'michael.green@example.com', '1992-11-25'),
(5, 'Laura White', 'laura.white@example.com', '1988-03-05');

-- 2. Orders Table

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders VALUES
(101, 1, '2025-01-01 10:15:00', 120.50),
(102, 2, '2025-01-03 15:20:00', 300.75),
(103, 3, '2025-01-05 13:45:00', 450.20),
(104, 4, '2025-01-07 11:10:00', 220.80),
(105, 5, '2025-01-08 16:30:00', 510.00);

-- 3. Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 800.00),
(2, 'Smartphone', 'Electronics', 500.00),
(3, 'Desk Chair', 'Furniture', 150.00),
(4, 'Notebook', 'Stationery', 10.00),
(5, 'Pen', 'Stationery', 5.00);

-- 4. OrderDetails Table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderDetails VALUES
(1, 101, 1, 1),
(2, 102, 2, 1),
(3, 103, 3, 2),
(4, 104, 4, 5),
(5, 105, 5, 10);

-- 1.	Fetch the current date and time:

select now();

select curdate();

select curtime();

-- 2.	Retrieve all orders placed in the last 7 days

select * from orders
where order_date > date_sub(curdate(), interval 7 day); 

select * from orders
where order_date > date_sub(curdate(), interval 1 week);


select datediff('2026-09-14',now());
select datediff(now(),'2026-09-14');
select date_sub(curdate(), interval 7 day);

select date_sub(curdate(), interval 1 day);
select date_sub(curdate(), interval 7 day);
select date_sub(curdate(), interval 3 month);
select date_sub(now(), interval 3 hour);

-- 3.	Find customers whose birthdays fall in the current month:

desc customers;

select * from customers
where month(date_of_birth) = month(curdate());

select * from customers;
select month(curdate());
select year(curdate());
select day(curdate());

-- 4.	Calculate the number of days between the earliest and latest order date:

select datediff(max(order_date), min(order_date)) from orders;

-- 5.	Retrieve the year and month of all orders:
select order_id, month(order_date), year(order_date)  from orders;

select 
	order_id, 
    concat(month(order_date), '-', year(order_date)) as order_date  
from orders;

select 
	order_id,
    concat(day(order_date), '-', month(order_date), '-', year(order_date)) as order_date
from orders;

-- 6.	Calculate the total revenue for orders in January 2025:
select * from orders;

select sum(total_amount) as total
from orders
where month(order_date) = 1 and year(order_date) = 2025;

select sum(total_amount) as total
from orders
where monthname(order_date) = 'January' and year(order_date) = 2025;

select * from orders;

select monthname(now());

-- 7.	Add 15 days to each order's date:

select order_date, date_add(order_date, interval 15 day) as order_date
from orders;

-- 9.	Retrieve the day of the week for each order:

select dayname(order_date) from orders;

-- 10.	Find orders placed on weekends:
select * from orders
where dayname(order_date) in ('Saturday', 'Sunday');

select * from orders
where dayofweek(order_date) in (1, 7);


select order_date, dayname(order_date) from orders;
select * from orders;

