-- string functions
create database string_functions_db;
use string_functions_db;

-- 1. Employees Table
-- Schema:
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    department VARCHAR(50)
);
-- Sample Data:
INSERT INTO employees (first_name, last_name, email, phone_number, department) VALUES
('John', 'Doe', 'john.doe@example.com', '+1-555-1234', 'Sales'),
('Jane', 'Smith', 'jane.smith@example.com', '+1-555-5678', 'Marketing'),
('Emily', 'Johnson', 'emily.johnson@example.com', '+1-555-9101', 'Engineering'),
('Michael', 'Brown', 'michael.brown@example.com', '+1-555-1122', 'Finance'),
('Linda', 'Davis', 'linda.davis@example.com', '+1-555-3344', 'HR'),
('Chris', 'Wilson', 'chris.wilson@example.com', '+1-555-2233', 'Sales'),
('Sara', 'Taylor', 'sara.taylor@example.com', '+1-555-4455', 'Marketing'),
('Paul', 'Anderson', 'paul.anderson@example.com', '+1-555-6677', 'Engineering'),
('Anna', 'Thomas', 'anna.thomas@example.com', '+1-555-8899', 'Finance'),
('James', 'Martinez', 'james.martinez@example.com', '+1-555-0000', 'HR'),
('Oliver', 'Jackson', 'oliver.jackson@example.com', '+1-555-2222', 'Sales'),
('Sophia', 'White', 'sophia.white@example.com', '+1-555-4444', 'Marketing'),
('Liam', 'Harris', 'liam.harris@example.com', '+1-555-6666', 'Engineering'),
('Isabella', 'Clark', 'isabella.clark@example.com', '+1-555-8888', 'Finance'),
('Benjamin', 'Lewis', 'benjamin.lewis@example.com', '+1-555-9999', 'HR'),
('Emma', 'Walker', 'emma.walker@example.com', '+1-555-1235', 'Sales'),
('Lucas', 'Hall', 'lucas.hall@example.com', '+1-555-5679', 'Marketing'),
('Mia', 'Young', 'mia.young@example.com', '+1-555-9102', 'Engineering'),
('Alexander', 'King', 'alexander.king@example.com', '+1-555-1123', 'Finance'),
('Olivia', 'Scott', 'olivia.scott@example.com', '+1-555-3345', 'HR'),
('Ethan', 'Adams', 'ethan.adams@example.com', '+1-555-4456', 'Sales'),
('Charlotte', 'Baker', 'charlotte.baker@example.com', '+1-555-6678', 'Marketing'),
('Aiden', 'Nelson', 'aiden.nelson@example.com', '+1-555-8890', 'Engineering'),
('Harper', 'Carter', 'harper.carter@example.com', '+1-555-0001', 'Finance'),
('Jack', 'Mitchell', 'jack.mitchell@example.com', '+1-555-2234', 'HR'),
('Zoe', 'White', 'zoe.white@example.com', '+1-555-3346', 'Sales'),
('Mason', 'Moore', 'mason.moore@example.com', '+1-555-4457', 'Marketing'),
('Lily', 'Roberts', 'lily.roberts@example.com', '+1-555-5567', 'Engineering'),
('Noah', 'Walker', 'noah.walker@example.com', '+1-555-6678', 'Finance'),
('Evelyn', 'Hall', 'evelyn.hall@example.com', '+1-555-7788', 'HR'),
('Grayson', 'Turner', 'grayson.turner@example.com', '+1-555-8899', 'Sales'),
('Avery', 'Thompson', 'avery.thompson@example.com', '+1-555-9900', 'Marketing'),
('Wyatt', 'Lewis', 'wyatt.lewis@example.com', '+1-555-1010', 'Engineering'),
('Sofia', 'King', 'sofia.king@example.com', '+1-555-2121', 'Finance'),
('Elijah', 'Adams', 'elijah.adams@example.com', '+1-555-3232', 'HR'),
('Mila', 'Johnson', 'mila.johnson@example.com', '+1-555-4343', 'Sales'),
('Oliver', 'Garcia', 'oliver.garcia@example.com', '+1-555-5454', 'Marketing'),
('Emma', 'Martinez', 'emma.martinez@example.com', '+1-555-6565', 'Engineering'),
('Aiden', 'Harris', 'aiden.harris@example.com', '+1-555-7676', 'Finance'),
('Isabella', 'Clark', 'isabella.clark@example.com', '+1-555-8787', 'HR'),
('Benjamin', 'Lewis', 'benjamin.lewis@example.com', '+1-555-9898', 'Sales'),
('Lucas', 'Young', 'lucas.young@example.com', '+1-555-1011', 'Marketing'),
('Landon', 'Nelson', 'landon.nelson@example.com', '+1-555-2122', 'Engineering'),
('Mia', 'Perez', 'mia.perez@example.com', '+1-555-3233', 'Finance'),
('Harper', 'Cooper', 'harper.cooper@example.com', '+1-555-4344', 'HR'),
('Charlotte', 'Rogers', 'charlotte.rogers@outlook.com', '+1-555-5455', 'Sales'),
('Elijah', 'Smith', 'elijah.smith@example.com', '+1-555-6566', 'Marketing'),
('Amelia', 'Johnson', 'amelia.johnson@gmail.com', '+1-555-7677', 'Engineering'),
('Sebastian', 'Walker', 'sebastian.walker@example.com', '+1-555-8788', 'Finance'),
('Aria', 'Brown', 'aria.brown@example.com', '+1-555-9899', 'HR');

-- 2. Products Table
-- Schema:

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    product_code VARCHAR(20),
    description TEXT,
    price DECIMAL(10, 2)
);

INSERT INTO products (product_name, product_code, description, price) VALUES
('Laptop', 'LAP123', 'High-performance laptop with 16GB RAM', 999.99),
('Smartphone', 'PHO456', 'Latest model smartphone with 64GB storage', 699.99),
('Headphones', 'HP789', 'Noise-cancelling wireless headphones', 149.99),
('Smartwatch', 'SW001', 'Smartwatch with fitness tracking features', 199.99),
('Tablet', 'TAB234', '10-inch tablet with 128GB storage', 399.99),
('Camera', 'CAM345', 'Digital camera with 20MP resolution', 499.99),
('Printer', 'PRI678', 'Color laser printer with wireless capabilities', 299.99),
('Monitor', 'MON901', '27-inch 4K monitor', 349.99),
('Keyboard', 'KEY234', 'Mechanical keyboard with backlight', 89.99),
('Mouse', 'MOU567', 'Wireless mouse with ergonomic design', 49.99),
('Router', 'ROU678', 'High-speed Wi-Fi router', 119.99),
('Speakers', 'SPE890', 'Bluetooth speakers with surround sound', 129.99),
('External HDD', 'HDD234', '1TB external hard drive', 89.99),
('Webcam', 'WEB567', 'HD webcam for video calls', 79.99),
('Microphone', 'MIC890', 'USB microphone for clear audio', 69.99),
('Smart Bulb', 'BUL123', 'Smart light bulb with color options', 29.99),
('Drone', 'DRN456', 'Quadcopter drone with HD camera', 599.99),
('VR Headset', 'VRH789', 'Virtual reality headset with immersive experience', 399.99),
('Smart Plug', 'PLG001', 'Smart plug for home automation', 24.99),
('Home Security Camera', 'SEC234', 'Wireless security camera with night vision', 159.99),
('Fitness Tracker', 'FTK567', 'Wearable fitness tracker with heart rate monitor', 89.99),
('Smart Thermostat', 'THR890', 'Smart thermostat with energy-saving features', 199.99),
('E-reader', 'ERD123', 'E-reader with high-resolution display', 139.99),
('Charging Cable', 'CHC456', 'Fast-charging USB cable', 14.99),
('Wireless Charger', 'WCH789', 'Wireless charger for compatible devices', 34.99),
('Portable Speaker', 'PSP012', 'Compact portable speaker with Bluetooth', 79.99),
('Smart Lock', 'SLK345', 'Electronic smart lock with keyless entry', 249.99),
('Home Hub', 'HUB678', 'Smart home hub for controlling devices', 119.99),
('Digital Photo Frame', 'DPF901', 'Digital frame with Wi-Fi connectivity', 139.99),
('Bluetooth Earbuds', 'BEU234', 'True wireless Bluetooth earbuds', 149.99),
('Smart Scale', 'SCA567', 'Digital scale with body composition analysis', 89.99),
('USB Flash Drive', 'UFD890', '64GB USB flash drive', 29.99),
('Gaming Mouse', 'GMU123', 'High-precision gaming mouse with extra buttons', 59.99),
('Smart Home Hub', 'SHH456', 'Central hub for smart home devices', 99.99),
('Electric Kettle', 'EKL789', 'Electric kettle with rapid boil feature', 49.99),
('Coffee Maker', 'CMK012', 'Programmable coffee maker with auto-start', 89.99),
('Toaster', 'TST345', '2-slice toaster with variable browning settings', 39.99),
('Blender', 'BLD678', 'High-speed blender for smoothies and shakes', 79.99),
('Microwave Oven', 'MWO901', 'Compact microwave oven with multiple settings', 149.99),
('Dishwasher', 'DHW234', 'Energy-efficient dishwasher with quick wash', 499.99),
('Refrigerator', 'FRG567', 'Double-door refrigerator with ice maker', 799.99),
('Washing Machine', 'WMN890', 'Front-loading washing machine with various cycles', 499.99),
('Dryer', 'DRY123', 'Electric dryer with sensor drying technology', 399.99),
('Air Purifier', 'APF456', 'Air purifier with HEPA filter', 199.99),
('Humidifier', 'HUM789', 'Ultrasonic humidifier with adjustable mist', 89.99),
('Electric Blanket', 'EBK012', 'Dual-control electric blanket with heating settings', 129.99),
('Space Heater', 'SHR345', 'Portable space heater with thermostat control', 99.99),
('Ceiling Fan', 'CFN678', 'Ceiling fan with remote control', 149.99);

-- 3. Orders Table
-- Schema:
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(20),
    customer_name VARCHAR(100),
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_number, customer_name, order_date, total_amount) VALUES
('ORD001', 'Alice Johnson', '2024-07-15', 1150.00),
('ORD002', 'Bob Williams', '2024-07-16', 699.99),
('ORD003', 'Charlie Brown', '2024-07-17', 149.99),
('ORD004', 'Diana Evans', '2024-07-18', 399.99),
('ORD005', 'Eva Green', '2024-07-19', 999.99),
('ORD006', 'Frank Lewis', '2024-07-20', 299.99),
('ORD007', 'Grace Wilson', '2024-07-21', 89.99),
('ORD008', 'Henry Scott', '2024-07-22', 69.99),
('ORD009', 'Ivy Hall', '2024-07-23', 129.99),
('ORD010', 'Jack Turner', '2024-07-24', 79.99),
('ORD011', 'Kylie Anderson', '2024-07-25', 49.99),
('ORD012', 'Liam Clark', '2024-07-26', 119.99),
('ORD013', 'Megan Adams', '2024-07-27', 199.99),
('ORD014', 'Nathan Baker', '2024-07-28', 24.99),
('ORD015', 'Olivia Carter', '2024-07-29', 159.99),
('ORD016', 'Paul Evans', '2024-07-30', 139.99),
('ORD017', 'Quinn Morgan', '2024-07-31', 79.99),
('ORD018', 'Rachel Murphy', '2024-08-01', 299.99),
('ORD019', 'Steve Rogers', '2024-08-02', 399.99),
('ORD020', 'Tina White', '2024-08-03', 699.99),
('ORD021', 'Ursula Green', '2024-08-04', 129.99),
('ORD022', 'Victor Nelson', '2024-08-05', 89.99),
('ORD023', 'Wendy Price', '2024-08-06', 199.99),
('ORD024', 'Xander Hayes', '2024-08-07', 249.99),
('ORD025', 'Yara Miller', '2024-08-08', 399.99),
('ORD026', 'Zachary Brooks', '2024-08-09', 549.99),
('ORD027', 'Anna Bennett', '2024-08-10', 299.99),
('ORD028', 'Brian Coleman', '2024-08-11', 89.99),
('ORD029', 'Cindy Fisher', '2024-08-12', 179.99),
('ORD030', 'Derek Long', '2024-08-13', 399.99),
('ORD031', 'Ella Barnes', '2024-08-14', 199.99),
('ORD032', 'Felix Ross', '2024-08-15', 239.99),
('ORD033', 'Gina Cooper', '2024-08-16', 299.99),
('ORD034', 'Henry Cox', '2024-08-17', 99.99),
('ORD035', 'Isla Moore', '2024-08-18', 159.99),
('ORD036', 'Jake Murphy', '2024-08-19', 279.99),
('ORD037', 'Lily Green', '2024-08-20', 349.99),
('ORD038', 'Mason Stewart', '2024-08-21', 199.99),
('ORD039', 'Nora Phillips', '2024-08-22', 119.99),
('ORD040', 'Oliver Diaz', '2024-08-23', 299.99),
('ORD041', 'Piper Martinez', '2024-08-24', 399.99),
('ORD042', 'Quinn Clark', '2024-08-25', 99.99),
('ORD043', 'Riley Brooks', '2024-08-26', 159.99),
('ORD044', 'Samuel Ward', '2024-08-27', 199.99),
('ORD045', 'Tessa Johnson', '2024-08-28', 249.99),
('ORD046', 'Ulysses Allen', '2024-08-29', 349.99),
('ORD047', 'Vera Rogers', '2024-08-30', 99.99),
('ORD048', 'Willow Jenkins', '2024-08-31', 149.99),
('ORD049', 'Xander Taylor', '2024-09-01', 229.99),
('ORD050', 'Yvonne Miller', '2024-09-02', 399.99),
('ORD051', 'Zane Wilson', '2024-09-03', 89.99),
('ORD052', 'Amelia Collins', '2024-09-04', 179.99),
('ORD053', 'David Ramirez', '2024-09-05', 299.99),
('ORD054', 'Ella Turner', '2024-09-06', 119.99),
('ORD055', 'George Young', '2024-09-07', 349.99),
('ORD056', 'Hannah Lewis', '2024-09-08', 199.99),
('ORD057', 'Isaac Wood', '2024-09-09', 129.99),
('ORD058', 'Jasmine Parker', '2024-09-10', 239.99),
('ORD059', 'Kevin Martin', '2024-09-11', 299.99),
('ORD060', 'Laura Harris', '2024-09-12', 399.99),
('ORD061', 'Megan Moore', '2024-09-13', 549.99),
('ORD062', 'Nathan Scott', '2024-09-14', 89.99),
('ORD063', 'Olivia Adams', '2024-09-15', 199.99),
('ORD064', 'Patrick Taylor', '2024-09-16', 279.99),
('ORD065', 'Quinn Lee', '2024-09-17', 349.99),
('ORD066', 'Riley Phillips', '2024-09-18', 119.99),
('ORD067', 'Sophia Hall', '2024-09-19', 159.99),
('ORD068', 'Tyler Jones', '2024-09-20', 199.99),
('ORD069', 'Uma Johnson', '2024-09-21', 299.99),
('ORD070', 'Vera White', '2024-09-22', 399.99),
('ORD071', 'Will Scott', '2024-09-23', 249.99),
('ORD072', 'Xander Brown', '2024-09-24', 139.99),
('ORD073', 'Yara Green', '2024-09-25', 279.99),
('ORD074', 'Zoe Clark', '2024-09-26', 399.99),
('ORD075', 'Adam Walker', '2024-09-27', 199.99),
('ORD076', 'Bethany Martinez', '2024-09-28', 299.99),
('ORD077', 'Carlos Davis', '2024-09-29', 119.99),
('ORD078', 'Diana Carter', '2024-09-30', 239.99),
('ORD079', 'Edward Turner', '2024-10-01', 179.99),
('ORD080', 'Fiona Mitchell', '2024-10-02', 89.99),
('ORD081', 'Gabriel Wilson', '2024-10-03', 299.99),
('ORD082', 'Holly Adams', '2024-10-04', 399.99),
('ORD083', 'Ian Clark', '2024-10-05', 149.99),
('ORD084', 'Julia Reed', '2024-10-06', 199.99),
('ORD085', 'Kelsey Moore', '2024-10-07', 279.99),
('ORD086', 'Liam Carter', '2024-10-08', 349.99),
('ORD087', 'Maya Green', '2024-10-09', 89.99),
('ORD088', 'Noah Lewis', '2024-10-10', 159.99),
('ORD089', 'Olivia Allen', '2024-10-11', 239.99),
('ORD090', 'Peter Brown', '2024-10-12', 399.99),
('ORD091', 'Quincy Adams', '2024-10-13', 119.99),
('ORD092', 'Rachel Cooper', '2024-10-14', 299.99),
('ORD093', 'Sam Davis', '2024-10-15', 229.99),
('ORD094', 'Tina Harris', '2024-10-16', 159.99),
('ORD095', 'Ursula Moore', '2024-10-17', 199.99),
('ORD096', 'Victor Turner', '2024-10-18', 299.99),
('ORD097', 'Wendy Johnson', '2024-10-19', 349.99),
('ORD098', 'Xander Lewis', '2024-10-20', 399.99),
('ORD099', 'Yvonne Davis', '2024-10-21', 249.99),
('ORD100', 'Zachary Scott', '2024-10-22', 159.99);

select * from employees;
select * from products;
select * from orders;

-- 1.	Concatenate first_name and last_name:

select
	concat(first_name, ' ', last_name) as full_name 
from employees;

-- John Doe (Sales)
select
	concat(first_name, ' ', last_name, ' (' , department, ')') as full_name_with_department 
from employees;

-- 2.	Extract first 5 characters of email
select email, substring(email, 1, 5) as email, left(email, 5) as email from employees;

-- 3.	Get length of phone_number

select phone_number, length(phone_number) from employees;




select * from employees;

