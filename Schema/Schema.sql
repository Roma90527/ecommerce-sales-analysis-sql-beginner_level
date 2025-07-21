DROP DATABASE IF EXISTS `ecommerce_db`;
CREATE DATABASE Ecommerce_db;
USE Ecommerce_db;

-- CREATE TABLES ----
CREATE TABLE Customers ( customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(100),
email VARCHAR(100),
country VARCHAR(100),
gender VARCHAR(10),
date_of_birth DATE,
sign_up_date  DATE,
is_premium BOOLEAN
);

CREATE TABLE Products ( product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(100),
price DECIMAL(10,2)
);

CREATE TABLE orders( order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY(customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE order_items ( order_items_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(product_id) REFERENCES Products(product_id)
);

