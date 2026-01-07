-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(100),
--     city VARCHAR(50),
--     signup_date DATE
-- );


-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE,
--     order_value DECIMAL(10,2)
-- );

-- CREATE TABLE order_items (
--     order_item_id INT PRIMARY KEY,
--     order_id INT,
--     product_id INT,
--     quantity INT,
--     price DECIMAL(8,2)
-- );

-- CREATE TABLE products (
--     product_id INT PRIMARY KEY,
--     product_name VARCHAR(100),
--     category VARCHAR(50)
-- );
-- 2. INSERT CUSTOMERS 
INSERT INTO customers VALUES
-- (1, 'Rahul Sharma', 'Mumbai', '2025-01-15'),
-- (2, 'Priya Singh', 'Delhi', '2025-02-10'),
-- (3, 'Amit Patel', 'Bangalore', '2025-01-20'),
-- (4, 'Neha Gupta', 'Mumbai', '2025-03-05'),
-- (5, 'Raj Kumar', 'Chennai', '2025-01-12'),
-- (6, 'Sneha Rani', 'Delhi', '2025-02-18'),
-- (7, 'Vikash Yadav', 'Bangalore', '2025-03-12'),
-- (8, 'Anita Devi', 'Hyderabad', '2025-01-08'),
-- (9, 'Rohit Verma', 'Pune', '2025-02-25'),
-- (10, 'Meera Joshi', 'Kolkata', '2025-01-30'),
-- (11, 'Karan Malhotra', 'Mumbai', '2025-03-20'),
-- (12, 'Divya Rathi', 'Delhi', '2025-02-02'),
-- (13, 'Suresh Babu', 'Chennai', '2025-01-25'),
-- (14, 'Pooja Nair', 'Bangalore', '2025-03-15'),
-- (15, 'Arjun Reddy', 'Hyderabad', '2025-02-28'),
(101, 'Amit Sharma', 'Delhi', '2023-10-10'),
(102, 'Neha Verma', 'Bangalore', '2023-11-15'),
(103, 'Rohit Singh', 'Mumbai', '2024-01-05');

-- -- 3. INSERT PRODUCTS
-- INSERT INTO products VALUES
-- (1, 'iPhone 15 Pro', 'Electronics'),
-- (2, 'Samsung Galaxy S25', 'Electronics'),
-- (3, 'MacBook Air M3', 'Electronics'),
-- (4, 'Nike Air Max', 'Footwear'),
-- (5, 'Adidas Ultraboost', 'Footwear'),
-- (6, 'Ray-Ban Sunglasses', 'Accessories'),
-- (7, 'Apple Watch Series 10', 'Electronics'),
-- (8, 'Sony WH-1000XM5', 'Electronics'),
-- (9, 'Levis Jeans 511', 'Apparel'),
-- (10, 'Gucci Belt', 'Accessories'),
-- (11, 'UNORDERED-PRODUCT-1', 'Electronics'),
-- (12, 'UNORDERED-PRODUCT-2', 'Footwear'),
-- (13, 'Laptop Stand', 'Accessories'),
-- (14, 'Wireless Mouse', 'Electronics'),
-- (15, 'Mechanical Keyboard', 'Electronics'),
-- (16, 'Power Bank 20000mAh', 'Electronics'),
-- (17, 'Bluetooth Speaker', 'Electronics'),
-- (18, 'Fitness Tracker', 'Electronics'),
-- (19, 'Smart Bulb', 'Electronics'),
-- (20, 'UNORDERED-PRODUCT-3', 'Apparel');

-- 4. INSERT ORDERS 
INSERT INTO orders VALUES
-- (1, 1, '2025-01-20', 4500.00),
-- (2, 2, '2025-01-25', 9800.00),
-- (3, 3, '2025-02-01', 3200.00),
-- (4, 4, '2025-02-15', 7600.00),
-- (5, 5, '2025-02-20', 8800.00),
-- (6, 1, '2025-03-10', 2500.00),
-- (7, 2, '2025-03-15', 12000.00),
-- (8, 6, '2025-03-20', 3400.00),
-- (9, 7, '2025-04-05', 5600.00),
-- (10, 3, '2025-04-12', 8900.00),
-- (11, 8, '2025-04-18', 2300.00),
-- (12, 9, '2025-05-02', 6700.00),
-- (13, 10, '2025-05-10', 4100.00),
-- (14, 11, '2025-05-15', 5200.00),
-- (15, 12, '2025-05-20', 7800.00),
-- (16, 2, '2025-06-01', 15600.00),
-- (17, 1, '2025-06-05', 3800.00),
-- (18, 4, '2025-06-10', 2900.00),
-- (19, 5, '2025-06-15', 4400.00),
-- (20, 13, '2025-06-20', 3500.00),
(201, 101, '2025-08-10', 1200),
(202, 101, '2025-09-15', 1500),
(203, 101, '2025-10-20', 1800),
(204, 101, '2025-12-05', 2000),
(205, 102, '2025-08-18', 900),
(206, 102, '2025-10-10', 1100),
(207, 102, '2025-11-22', 1300),
(208, 103, '2025-09-30', 1600),
(209, 103, '2025-05-15', 1700);


-- 5. INSERT ORDER_ITEMS 
-- INSERT INTO order_items VALUES
-- (1, 1, 1, 1, 4500.00),
-- (2, 2, 2, 1, 9800.00),
-- (3, 3, 4, 2, 1600.00),
-- (4, 4, 5, 1, 7600.00),
-- (5, 5, 7, 1, 8800.00),
-- (6, 6, 9, 1, 2500.00),
-- (7, 7, 3, 1, 12000.00),
-- (8, 8, 6, 1, 3400.00),
-- (9, 9, 8, 1, 5600.00),
-- (10, 10, 1, 1, 8900.00);
