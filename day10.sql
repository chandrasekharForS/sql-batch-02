create database numeric_functions_db;
use numeric_functions_db;

-- 1. products Table

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    product_code VARCHAR(20),
    price DECIMAL(10, 2),
    stock_quantity INT
);

INSERT INTO products (product_name, product_code, price, stock_quantity) VALUES
('Laptop', 'LAP001', 999.99, 50),
('Smartphone', 'PHO002', 699.99, 150),
('Headphones', 'HP003', 149.99, 200),
('Smartwatch', 'SW004', 199.99, 75),
('Tablet', 'TAB005', 399.99, 100),
('Camera', 'CAM006', 499.99, 30),
('Printer', 'PRI007', 299.99, 60),
('Monitor', 'MON008', 349.99, 40),
('Keyboard', 'KEY009', 89.99, 120),
('Mouse', 'MOU010', 49.99, 250),
('Router', 'ROU011', 119.99, 90),
('Speakers', 'SPE012', 129.99, 80),
('External HDD', 'HDD013', 89.99, 70),
('Webcam', 'WEB014', 79.99, 60),
('Microphone', 'MIC015', 69.99, 55),
('Smart Bulb', 'BUL016', 29.99, 150),
('Drone', 'DRN017', 599.99, 20),
('VR Headset', 'VRH018', 399.99, 25),
('Smart Plug', 'PLG019', 24.99, 200),
('Home Security Camera', 'SEC020', 159.99, 45),
('Fitness Tracker', 'FTK021', 89.99, 80),
('Smart Thermostat', 'THR022', 199.99, 55),
('E-reader', 'ERD023', 139.99, 30),
('Game Console', 'CON024', 499.99, 40),
('Digital Pen', 'PEN025', 119.99, 70),
('Portable Speaker', 'PSK026', 79.99, 60),
('Action Camera', 'ACT027', 299.99, 25),
('3D Printer', '3D028', 699.99, 15),
('Smart Doorbell', 'DBL029', 199.99, 40),
('Digital Frame', 'DFR030', 129.99, 50),
('Smart Scale', 'SCL031', 49.99, 100),
('Air Purifier', 'AIR032', 249.99, 35),
('Electric Kettle', 'KET033', 59.99, 90),
('Coffee Maker', 'CMK034', 89.99, 60),
('Blender', 'BLN035', 69.99, 80),
('Toaster', 'TOS036', 39.99, 120),
('Microwave', 'MWC037', 119.99, 70),
('Oven', 'OVN038', 599.99, 20),
('Refrigerator', 'FRG039', 999.99, 25),
('Washing Machine', 'WAM040', 499.99, 30),
('Dryer', 'DRY041', 499.99, 20),
('Dishwasher', 'DWC042', 399.99, 25),
('Vacuum Cleaner', 'VAC043', 149.99, 60),
('Iron', 'IRN044', 29.99, 150),
('Fan', 'FAN045', 39.99, 90),
('Heater', 'HTR046', 99.99, 55),
('Humidifier', 'HUM047', 79.99, 70),
('Dehumidifier', 'DEH048', 199.99, 25),
('Air Conditioner', 'ACR049', 499.99, 20),
('Water Filter', 'WTF050', 89.99, 80);

-- 2. sales Table

CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE,
    product_id INT,
    quantity_sold INT,
    sale_price DECIMAL(10, 2)
);

INSERT INTO sales (sale_date, product_id, quantity_sold, sale_price) VALUES
('2024-01-01', 1, 5, 4999.95),
('2024-01-02', 2, 10, 6999.90),
('2024-01-03', 3, 20, 2999.80),
('2024-01-04', 4, 7, 1399.93),
('2024-01-05', 5, 12, 4799.88),
('2024-01-06', 6, 4, 1999.96),
('2024-01-07', 7, 8, 2399.92),
('2024-01-08', 8, 6, 2099.94),
('2024-01-09', 9, 15, 1349.85),
('2024-01-10', 10, 25, 1249.75),
('2024-01-11', 11, 9, 1079.91),
('2024-01-12', 12, 7, 909.93),
('2024-01-13', 13, 15, 1349.85),
('2024-01-14', 14, 8, 639.92),
('2024-01-15', 15, 6, 419.94),
('2024-01-16', 16, 20, 599.80),
('2024-01-17', 17, 3, 1799.97),
('2024-01-18', 18, 5, 1999.95),
('2024-01-19', 19, 10, 249.90),
('2024-01-20', 20, 4, 639.96),
('2024-01-21', 21, 8, 719.92),
('2024-01-22', 22, 10, 899.90),
('2024-01-23', 23, 12, 1079.88),
('2024-01-24', 24, 5, 2499.95),
('2024-01-25', 25, 7, 839.93),
('2024-01-26', 26, 3, 239.97),
('2024-01-27', 27, 4, 1199.96),
('2024-01-28', 28, 5, 1499.95),
('2024-01-29', 29, 6, 1199.94),
('2024-01-30', 30, 7, 909.93),
('2024-01-31', 31, 9, 899.91),
('2024-02-01', 32, 10, 1249.90),
('2024-02-02', 33, 5, 299.95),
('2024-02-03', 34, 3, 269.97),
('2024-02-04', 35, 6, 419.94),
('2024-02-05', 36, 4, 479.96),
('2024-02-06', 37, 7, 839.93),
('2024-02-07', 38, 2, 1199.98),
('2024-02-08', 39, 8, 3999.92),
('2024-02-09', 40, 10, 4999.90),
('2024-02-10', 41, 5, 749.95),
('2024-02-11', 42, 6, 1199.94),
('2024-02-12', 43, 7, 1049.93),
('2024-02-13', 44, 10, 999.90),
('2024-02-14', 45, 5, 149.95),
('2024-02-15', 46, 8, 799.92),
('2024-02-16', 47, 6, 299.94),
('2024-02-17', 48, 4, 599.96),
('2024-02-18', 49, 3, 689.97),
('2024-02-19', 50, 7, 629.93),
('2024-02-20', 1, 8, 7999.92),
('2024-02-21', 2, 12, 8399.88),
('2024-02-22', 3, 22, 3299.78),
('2024-02-23', 4, 6, 1199.94),
('2024-02-24', 5, 10, 3999.90);

-- 3. orders Table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(20),
    customer_name VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_number, customer_name, order_date, total_amount) VALUES
('ORD001', 'Alice Johnson', '2024-07-01', 1150.00),
('ORD002', 'Bob Williams', '2024-07-02', 699.99),
('ORD003', 'Charlie Brown', '2024-07-03', 149.99),
('ORD004', 'Diana Evans', '2024-07-04', 399.99),
('ORD005', 'Eva Green', '2024-07-05', 999.99),
('ORD006', 'Frank Lewis', '2024-07-06', 299.99),
('ORD007', 'Grace Wilson', '2024-07-07', 89.99),
('ORD008', 'Henry Scott', '2024-07-08', 69.99),
('ORD009', 'Ivy Hall', '2024-07-09', 129.99),
('ORD010', 'Jack Turner', '2024-07-10', 79.99),
('ORD011', 'Kylie Anderson', '2024-07-11', 49.99),
('ORD012', 'Liam Clark', '2024-07-12', 119.99),
('ORD013', 'Megan Adams', '2024-07-13', 199.99),
('ORD014', 'Nathan Baker', '2024-07-14', 24.99),
('ORD015', 'Olivia Carter', '2024-07-15', 159.99),
('ORD016', 'Paul Evans', '2024-07-16', 139.99),
('ORD017', 'Quinn Morgan', '2024-07-17', 79.99),
('ORD018', 'Rachel Murphy', '2024-07-18', 299.99),
('ORD019', 'Steve Rogers', '2024-07-19', 399.99),
('ORD020', 'Tina White', '2024-07-20', 699.99),
('ORD021', 'Ursula Green', '2024-07-21', 129.99),
('ORD022', 'Victor Nelson', '2024-07-22', 89.99),
('ORD023', 'Wendy Price', '2024-07-23', 199.99),
('ORD024', 'Xander Hayes', '2024-07-24', 249.99),
('ORD025', 'Yara Miller', '2024-07-25', 399.99),
('ORD026', 'Zachary Brooks', '2024-07-26', 549.99),
('ORD027', 'Anna Bennett', '2024-07-27', 299.99),
('ORD028', 'Brian Coleman', '2024-07-28', 89.99),
('ORD029', 'Cindy Fisher', '2024-07-29', 179.99),
('ORD030', 'Derek Long', '2024-07-30', 399.99),
('ORD031', 'Ella Barnes', '2024-07-31', 199.99),
('ORD032', 'Felix Ross', '2024-08-01', 239.99),
('ORD033', 'Gina Cooper', '2024-08-02', 299.99),
('ORD034', 'Henry Cox', '2024-08-03', 99.99),
('ORD035', 'Isla Moore', '2024-08-04', 159.99),
('ORD036', 'Jake Murphy', '2024-08-05', 279.99),
('ORD037', 'Lily Green', '2024-08-06', 349.99),
('ORD038', 'Mason Stewart', '2024-08-07', 199.99),
('ORD039', 'Nora Phillips', '2024-08-08', 119.99),
('ORD040', 'Oliver Diaz', '2024-08-09', 299.99),
('ORD041', 'Piper Martinez', '2024-08-10', 399.99),
('ORD042', 'Quinn Clark', '2024-08-11', 99.99),
('ORD043', 'Riley Brooks', '2024-08-12', 159.99),
('ORD044', 'Samuel Ward', '2024-08-13', 199.99),
('ORD045', 'Tessa Johnson', '2024-08-14', 249.99),
('ORD046', 'Ulysses Allen', '2024-08-15', 349.99),
('ORD047', 'Vera Rogers', '2024-08-16', 99.99),
('ORD048', 'Willow Jenkins', '2024-08-17', 149.99),
('ORD049', 'Xander Taylor', '2024-08-18', 229.99),
('ORD050', 'Yvonne Miller', '2024-08-19', 399.99);

-- 4. inventory Table
CREATE TABLE inventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    warehouse_location VARCHAR(100),
    quantity_in_stock INT,
    restock_threshold INT
);

INSERT INTO inventory (product_id, warehouse_location, quantity_in_stock, restock_threshold) VALUES
(1, 'Warehouse A', 50, 10),
(2, 'Warehouse B', 150, 20),
(3, 'Warehouse C', 200, 25),
(4, 'Warehouse D', 75, 15),
(5, 'Warehouse E', 100, 30),
(6, 'Warehouse F', 30, 10),
(7, 'Warehouse G', 60, 20),
(8, 'Warehouse H', 40, 15),
(9, 'Warehouse I', 120, 25),
(10, 'Warehouse J', 250, 30),
(11, 'Warehouse A', 90, 20),
(12, 'Warehouse B', 80, 15),
(13, 'Warehouse C', 70, 25),
(14, 'Warehouse D', 55, 15),
(15, 'Warehouse E', 150, 25),
(16, 'Warehouse F', 200, 30),
(17, 'Warehouse G', 20, 10),
(18, 'Warehouse H', 25, 15),
(19, 'Warehouse I', 200, 20),
(20, 'Warehouse J', 45, 10),
(21, 'Warehouse A', 80, 25),
(22, 'Warehouse B', 60, 15),
(23, 'Warehouse C', 55, 20),
(24, 'Warehouse D', 40, 15),
(25, 'Warehouse E', 70, 20),
(26, 'Warehouse F', 30, 10),
(27, 'Warehouse G', 45, 15),
(28, 'Warehouse H', 25, 20),
(29, 'Warehouse I', 80, 25),
(30, 'Warehouse J', 90, 30),
(31, 'Warehouse A', 50, 15),
(32, 'Warehouse B', 40, 10),
(33, 'Warehouse C', 60, 20),
(34, 'Warehouse D', 55, 25),
(35, 'Warehouse E', 30, 10),
(36, 'Warehouse F', 25, 15),
(37, 'Warehouse G', 15, 10),
(38, 'Warehouse H', 35, 20),
(39, 'Warehouse I', 60, 25),
(40, 'Warehouse J', 70, 30),
(41, 'Warehouse A', 55, 15),
(42, 'Warehouse B', 25, 10),
(43, 'Warehouse C', 30, 20),
(44, 'Warehouse D', 20, 15),
(45, 'Warehouse E', 40, 10),
(46, 'Warehouse F', 10, 15),
(47, 'Warehouse G', 25, 20),
(48, 'Warehouse H', 35, 25),
(49, 'Warehouse I', 20, 30),
(50, 'Warehouse J', 45, 25);

-- abs()
select abs(10), abs(-10);

-- ceiling()
select ceiling(5);
select ceiling(5.1);

-- floor()
select floor(5);

select floor(5.1);

select floor(5.6);

-- round()
select round(5.45);
select round(5.55);

-- calculate the total value of products in the sales table by 
-- multiplying quantity_sold and sale_price?

select * from sales;

select 
	product_id,
    quantity_sold,
    sale_price,
    quantity_sold * sale_price
from sales;

-- calculate a 10% discount on the price of each product in the products table

select 
	product_name, 
    price,
    price - (price * 10/100) as discounted_price
from products;

-- round the sale_price in the sales table to the nearest whole number
select * from sales;
select sale_price, round(sale_price) from sales;

select sale_price, round(sale_price,1) from sales;

-- find the absolute difference between the price of each product and the 
-- price of the most expensive product in the products table?
select abs(price  - (select max(price) from products)) from products;

-- round up the sale_price of each sale to the nearest whole number using the CEILING() function?
select sale_price, ceiling(sale_price) from sales;

-- round down the total_amount of each order to the nearest whole number using the FLOOR() function?
select sale_price, floor(sale_price) from sales;

-- Truncate the sale_price in the sales table to two decimal places.
select sale_price, round(sale_price/7, 2), truncate(sale_price/7, 2) from sales;

-- Generate a random discount percentage between 0 and 10% for each product.
select rand();
select 10 * rand();

SELECT id, product_name,
       ROUND(RAND() * 10, 2) AS discount_percentage
FROM products;

-- pow()
select pow(10, 2);
select  pow(10, 4);


-- Generate a random price between 50 and 150 for each product using the RAND() function.
select 50 + (100 * rand());

SELECT id, product_name,
       ROUND(50 + (RAND() * 100), 2) AS random_price
FROM products;

select * from products;

