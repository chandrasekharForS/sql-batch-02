-- select
create database selectDB;
use selectDB;

-- products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    category VARCHAR(50),
    stock INT
);

-- customers Table

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50)
);

-- Insert Rows into products Table

INSERT INTO products (name, price, category, stock)
VALUES
    ('Smartphone',      699.99,  'Electronics', 50),
    ('Laptop',         1199.99,  'Electronics', 30),
    ('Headphones',      199.99,  'Accessories', 200),
    ('Office Chair',    149.99,  'Furniture', 100),
    ('Coffee Machine',   89.99,  'Appliances', 150),
    ('SmartWatch',      250.99,  'Electronics', 250),
    ('T.V',             500.99,  'Electronics', NULL),
    ('Keyboard',         49.99,  'Accessories', 120),
    ('Mouse',            29.99,  'Accessories', 180),
    ('Printer',         179.99,  'Electronics', 40),
    ('Air Conditioner', 899.99,  'Appliances', 20),
    ('Refrigerator',   1299.99,  'Appliances', 15),
    ('Dining Table',    549.99,  'Furniture', 12),
    ('Bookshelf',       199.99,  'Furniture', 35),
    ('Mixer Grinder',   129.99,  'Appliances', 75),
    ('Bluetooth Speaker', 99.99, 'Electronics', 90),
    ('Gaming Console',  499.99,  'Electronics', 25),
    ('Webcam',           79.99,  'Accessories', 65),
    ('USB Flash Drive',  19.99,  'Accessories', 300),
    ('Microwave Oven',  349.99,  'Appliances', 28);

-- Insert Rows into customers Table

INSERT INTO customers (name, email, city)
VALUES
    ('Aarav Sharma', 'aarav.sharma@example.com', 'Visakhapatnam'),
    ('Ananya Reddy', 'ananya.reddy@example.com', 'Bengaluru'),
    ('Rahul Verma', 'rahul.verma@example.com', 'Chennai'),
    ('Priya Nair', 'priya.nair@example.com', 'Kochi'),
    ('Vikram Singh', 'vikram.singh@example.com', 'Jaipur'),
    ('Sneha Patil', 'sneha.patil@example.com', 'Pune'),
    ('Arjun Mehta', 'arjun.mehta@example.com', 'Ahmedabad'),
    ('Kavya Iyer', 'kavya.iyer@example.com', 'Coimbatore'),
    ('Rohan Gupta', 'rohan.gupta@example.com', 'Delhi'),
    ('Meera Joshi', 'meera.joshi@example.com', 'Nagpur'),
    ('Sandeep Kumar', 'sandeep.kumar@example.com', 'Lucknow'),
    ('Pooja Kulkarni', 'pooja.kulkarni@example.com', 'Nashik'),
    ('Nikhil Rao', 'nikhil.rao@example.com', 'Mysuru'),
    ('Divya Choudhary', 'divya.choudhary@example.com', 'Indore'),
    ('Kiran Reddy', 'kiran.reddy@example.com', 'Vijayawada'),
    ('Lakshmi Devi', 'lakshmi.devi@example.com', 'Tirupati'),
    ('Manoj Yadav', 'manoj.yadav@example.com', 'Patna'),
    ('Deepika Menon', 'deepika.menon@example.com', 'Thiruvananthapuram'),
    ('Harish Babu', 'harish.babu@example.com', 'Warangal'),
    ('Neha Agarwal', 'neha.agarwal@example.com', 'Bhubaneswar');

-- to view all the rows and columns

select * from products;

select 
	product_id, 
    name , 
    price, 
    category, 
    stock 
from products;

-- want to view some columns(name, price, stock)

select
	name,
    price,
    stock
from products;

-- want to view only some specified rows (electronics as category)
desc products;

select * from products
where category='Electronics';

select * from products
where category='Electronis';

select * from products
where category='electronics';

-- order(sorting)
select * from products;

select * from products
order by name;

select * from products
order by name asc;

select * from products
order by name desc;

select * from products
order by price desc;

select * from products
order by stock asc;

-- order (multiple columns)
select * from products;

insert into products values(null, 'Air Conditioner', 699.99, 'Appliances', 35);

select * from products
order by name, price asc;

select * from products
order by category asc, price desc;

-- limit
select * from products
order by price asc
limit 5;

-- distinct
select distinct category from products;

-- no of products
select count(*) as no_of_products from products;
select count(name) from products;
select count(stock) from products;

select sum(stock) from products;

select avg(price) from products;

select max(price) from products;

select min(price) from products;

select max(price), min(price) from products;

-- products which belongs to the Electronics and Appliances categories
select * from products
where category='Electronics' or category = 'Appliances';

select * from products
where category in('Electronics', 'Appliances');


-- all the products on price range between 100 and 800.
select * from products
where price >= 100 and price <= 800;

select * from products
where price between 100 and 800;

-- show products their names starts from S.

select * from products
where name like 'S%';

-- show products their names ends with e.

select * from products
where name like '%e';

-- show products their names starts with S and ends with e.
select * from products
where name like 'S%e';

-- show the products their names should contain t.

select * from products
where name like '%t%';

-- null and not null

select * from products
where stock is null;

select * from products
where stock is not null;

-- case
select
	name,
    price,
    case
		when price < 100 then 'Budget'
        when price between 100 and 500 then 'Mid-range'
        else 'Premium'
	end as price_category
from products
order by price_category;

-- group by
select 
	category,
    count(*) as no_of_products 
from products
group by category;

select 
	category,
    count(*) as no_of_products 
from products
group by category
where category='Accessories';

select 
	category,
    count(*) as no_of_products 
from products
group by category
having category='Accessories';

-- Get the Second and Third Most Expensive Products

select * from products
order by price desc
limit 2 offset 1;

-- Combine Results from Electronics and Appliances Categories
SELECT name, price FROM products WHERE category = 'Electronics'
UNION
SELECT name, price FROM products WHERE category = 'Appliances';

-- Calculate Discounted Price for All Products (10% Discount)

select
	name,
    price,
    price * 10/100 as discount
from products;

-- round

select
	name,
    price,
    round(price * 10/100, 2) as discount
from products;



select * from products;
