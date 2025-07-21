-- -----INSERT DATA INTO TABLES -----------

INSERT INTO Customers (customer_name,email,country,gender,date_of_birth,sign_up_date,is_premium)
VALUES 
('Alice Smith', 'alice@gmail.com', 'USA', 'Female', '1990-05-14', '2025-01-10', 1),
('Bob Lee', 'bob@yahoo.com', 'Canada', 'Male', '1985-08-23', '2025-02-05', 0),
('Clara Jones', 'clara@hotmail.com', 'UK', 'Female', '1992-11-30', '2025-03-12', 1),
('David Kim', 'david@outlook.com', 'USA', 'Male', '1988-07-09', '2025-01-25', 0),
('Eva Brown', 'eva@gmail.com', 'Germany', 'Female', '1995-03-17', '2025-04-15', 1),
('Frank White', 'frank@live.com', 'USA', 'Male', '1982-01-02', '2025-05-22', 0),
('Grace Hall', 'grace@gmail.com', 'France', 'Female', '1994-09-08', '2025-06-30', 1),
('Hassan Ali', 'hassan@gmail.com', 'UAE', 'Male', '1991-12-05', '2025-07-03', 0),
('Isla Ray', 'isla@gmail.com', 'Australia', 'Female', '1996-10-11', '2025-07-08', 1),
('Jack Black', 'jack@gmail.com', 'USA', 'Male', '1987-06-22', '2025-07-09', 0);

INSERT INTO  Products (product_name,category,price)
VALUES 
('Laptop', 'Electronics', 1000.00),
('Phone', 'Electronics', 600.00),
('Desk Chair', 'Furniture', 150.00),
('Tablet', 'Electronics', 400.00),
('Monitor', 'Electronics', 250.00),
('Keyboard', 'Accessories', 50.00),
('Mouse', 'Accessories', 30.00),
('Printer', 'Electronics', 200.00),
('Bookshelf', 'Furniture', 120.00),
('Webcam', 'Accessories', 80.00);

INSERT INTO  orders (customer_id, order_date)
VALUES
(1, '2025-07-01'),
(2, '2025-07-03'),
(3, '2025-07-06'),
(4, '2025-07-08'),
(5, '2025-07-10'),
(6, '2025-07-11'),
(7, '2025-07-12'),
(8, '2025-07-13'),
(9, '2025-07-14'),
(10, '2025-07-15');

INSERT INTO  order_items (order_id, product_id, quantity)
VALUES
(1, 1, 1),     -- Laptop
(1, 3, 2),     -- 2x Desk Chair
(2, 2, 1),     -- Phone
(3, 4, 1),     -- Tablet
(4, 1, 1),     -- Laptop
(4, 5, 2),     -- 2x Monitor
(5, 6, 1),     -- Keyboard
(5, 7, 1),     -- Mouse
(6, 8, 1),     -- Printer
(7, 9, 2),     -- 2x Bookshelf
(8, 10, 1),    -- Webcam
(9, 2, 1),     -- Phone
(9, 6, 1),     -- Keyboard
(10, 4, 1),    -- Tablet
(10, 7, 2);    -- 2x Mouse
