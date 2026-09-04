-- 1. creating database
drop database ecommerce_db;

create database ecommerce_db;

use ecommerce_db;

-- create a table products
-- product_id, product_name, price, stock, category, added_date
-- products(product_id, product_name, price, stock, category, added_date)

create table products(
	product_id int, 
    product_name varchar(50), 
    price decimal(10, 2), 
    stock int, 
    category varchar(40), 
    added_date date
);

desc products;

insert into products values
(1,'Laptop', 98000.00, 5, 'Electronics', '2026-09-03');

insert into products values
(2,'T.V', 125000.00, 15, 'Electronics', '2026-09-02');

insert into products values
(2,'Pen', 15.50, 5000, 'Books & Stationery', '2026-02-25');

insert into products values
(3,'Shirt', 800.00, 50, 'Clothing & Fashion', '2026-05-30');

insert into products  values
(4, 'Pant', 1600.00,35,'Clothing & Fashion', '2026-05-30'),
(5, 'Camera', 250000.00, 2, 'Electronics', '2026-04-22'),
(6, 'Mouse', 750.00, 5000, 'Electronics', '2026-03-11');

insert into products values
(7, 'Pencil', 7.5, null, 'Books & Stationery', '2026-02-25'); 

select * from products;

