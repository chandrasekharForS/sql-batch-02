-- joins
-- inner join(join)
-- outer join
-- 	left outer join(left join)
--  right outer join(right join)
-- self join

create database joins_db;
use joins_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Miami');

INSERT INTO customers VALUES
(5, 'Ramesh', 'Bangalore'),
(6, 'Divya', 'Tirupathi');

select * from customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(101, '2024-01-10', 1, 250.00),
(102, '2024-02-15', 2, 300.00),
(103, '2024-03-05', 1, 450.00),
(104, '2024-04-01', 5, 150.00); 

insert into orders values
(105, '2025-04-19', 1, 500),
(106, '2035-04-18', 3, 400),
(107, '2035-04-18', 2, 800);

insert into orders values
(108, '2025-04-19', 8, 500); -- customer_id 8 doesn't exist in customers

-- inner join
-- Returns rows where there's a match in both tables.

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c inner join orders as o
on o.customer_id = c.customer_id; 

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c join orders as o
on o.customer_id = c.customer_id; 

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c inner join orders as o using(customer_id); 

-- left outer join(left join)

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c left outer join orders as o
on o.customer_id = c.customer_id; 

insert into orders values
(108, '2025-04-19', null, 500);

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from orders as o left outer join customers as c 
on o.customer_id = c.customer_id; 

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c left join orders as o
on o.customer_id = c.customer_id; 

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c left join orders as o
using(customer_id);

-- right outer join

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c right outer join orders as o
on o.customer_id = c.customer_id;

--  

select 
	c.customer_name,
    sum(o.amount) as total
from customers as c join orders as o
on o.customer_id = c.customer_id
group by c.customer_name; 

-- FULL OUTER JOIN (left join + right join)
select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c left join orders as o
using(customer_id)

union

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from orders as o left join customers as c
using(customer_id);

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c left join orders as o
using(customer_id)

union

select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c right join orders as o
using(customer_id);

-- cross join
select 
	c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
from customers as c join orders as o;

-- 3 tables

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(201, 'Laptop', 1200.00),
(202, 'Phone', 800.00),
(203, 'Tablet', 600.00);

alter table orders add column product_id int;

desc orders;



UPDATE orders SET product_id = 201 WHERE order_id = 101;
UPDATE orders SET product_id = 202 WHERE order_id = 102;
UPDATE orders SET product_id = 201 WHERE order_id = 103;
UPDATE orders SET product_id = 203 WHERE order_id = 104;

select * from products;

select * from orders;

-- join customers, products, orders

select 
	c.customer_name,
    c.city,
    o.order_id,
    p.product_name,
    p.price,
    o.order_date,
    o.amount
from 
customers as c join orders as o
on c.customer_id = o.customer_id
join products as p
on p.product_id = o.product_id;

SELECT c.customer_name, p.product_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
WHERE p.product_name = 'Laptop';


