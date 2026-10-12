-- View

CREATE DATABASE ecommerce_views_db;
USE ecommerce_views_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    phone VARCHAR(15)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Furniture'),
('Books'),
('Home Appliances');

INSERT INTO customers
(customer_name, email, city, phone) VALUES
('Ravi Kumar', 'ravi@gmail.com', 'Visakhapatnam', '9876500001'),
('Suresh Reddy', 'suresh@gmail.com', 'Hyderabad', '9876500002'),
('Priya Sharma', 'priya@gmail.com', 'Bengaluru', '9876500003'),
('Anil Kumar', 'anil@gmail.com', 'Chennai', '9876500004'),
('Lakshmi Devi', 'lakshmi@gmail.com', 'Vijayawada', '9876500005'),
('Kiran Rao', 'kiran@gmail.com', 'Visakhapatnam', '9876500006'),
('Sneha Reddy', 'sneha@gmail.com', 'Hyderabad', '9876500007'),
('Arjun Varma', 'arjun@gmail.com', 'Pune', '9876500008'),
('Divya Sri', 'divya@gmail.com', 'Bengaluru', '9876500009'),
('Mahesh Babu', 'mahesh@gmail.com', 'Chennai', '9876500010');

INSERT INTO products
(product_name, price, stock, category_id) VALUES
('Laptop', 65000, 15, 1),
('Smartphone', 25000, 30, 1),
('Keyboard', 1500, 50, 1),
('Mouse', 800, 60, 1),
('Monitor', 12000, 20, 1),
('T-Shirt', 700, 100, 2),
('Jeans', 1800, 70, 2),
('Jacket', 2500, 40, 2),
('Office Chair', 5500, 25, 3),
('Dining Table', 15000, 10, 3),
('Java Programming', 650, 100, 4),
('Python Programming', 750, 80, 4),
('SQL Guide', 500, 90, 4),
('Washing Machine', 22000, 12, 5),
('Refrigerator', 30000, 8, 5);

INSERT INTO orders
(customer_id, order_date, status) VALUES
(1, '2026-09-01', 'Delivered'),
(2, '2026-09-02', 'Delivered'),
(3, '2026-09-03', 'Pending'),
(4, '2026-09-04', 'Shipped'),
(5, '2026-09-05', 'Delivered'),
(6, '2026-09-06', 'Pending'),
(7, '2026-09-07', 'Delivered'),
(8, '2026-09-08', 'Cancelled'),
(9, '2026-09-09', 'Shipped'),
(10, '2026-09-10', 'Delivered'),
(1, '2026-09-11', 'Pending'),
(3, '2026-09-12', 'Delivered'),
(5, '2026-09-13', 'Shipped'),
(7, '2026-09-14', 'Pending'),
(9, '2026-09-15', 'Delivered');


INSERT INTO order_items
(order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 65000),
(1, 3, 2, 1500),
(2, 2, 1, 25000),
(2, 4, 2, 800),
(3, 6, 3, 700),
(3, 7, 1, 1800),
(4, 5, 1, 12000),
(4, 3, 1, 1500),
(5, 9, 2, 5500),
(5, 11, 2, 650),
(6, 12, 1, 750),
(6, 13, 3, 500),
(7, 14, 1, 22000),
(7, 6, 2, 700),
(8, 8, 1, 2500),
(8, 7, 2, 1800),
(9, 10, 1, 15000),
(9, 9, 1, 5500),
(10, 15, 1, 30000),
(10, 4, 3, 800),
(11, 2, 1, 25000),
(11, 3, 2, 1500),
(12, 1, 1, 65000),
(12, 11, 3, 650),
(13, 14, 1, 22000),
(13, 13, 2, 500),
(14, 6, 4, 700),
(14, 8, 1, 2500),
(15, 5, 2, 12000),
(15, 12, 2, 750);

-- Create a view to display customer details

select * from customers;

create view customer_view as
	select
		customer_name,
		email,
		city,
		phone
	from customers;

select * from customer_view;

create view customers_from_viaq_view as
	select * from customers
    where city='Visakhapatnam';
		
select * from customers_from_viaq_view;

-- displays products along with their category names
create view product_category_view as
	select
		p.product_name,
		c.category_name
	from products as p join categories as c
	on p.category_id = c.category_id;

select  * from 	product_category_view;

select  * from 	product_category_view
where category_name = 'Electronics';

select count(*) from product_category_view;

select 
	category_name,
    count(*) 
from product_category_view
group by category_name;



-- modifying a view
select * from customer_view;

create or replace view customer_view as
	select
		customer_name,
        city,
        phone
	from customers;
    
    
select * from customer_view;

-- modify data through a view
select * from customer_view;

select * from customers;

update customer_view set city='Bengaluru'
where customer_name = 'Suresh Reddy';

-- dropping a view

drop view customer_view;

select * from customers;

show full tables
where table_type = 'VIEW';





