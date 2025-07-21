
-- Customer Analysis-- 
-- we use SELECT statement to customer display data. The SQL SELECT statement is used to query and retrieve data from a database.
-- Query1: Display all columns from the customer table 
SELECT *
FROM ecommerce_db.customers;

-- Query2: Display customer data living in the UK 
SELECT *
FROM ecommerce_db.customers
WHERE country ='UK';

-- Query3: Display customer_name, email and country who are female. 
SELECT customer_name, email, country, gender
FROM ecommerce_db.customers
WHERE gender ='Female';

-- Query4: Display customer data either living in UK and USA
SELECT *
FROM ecommerce_db.customers
WHERE country = 'UK'
OR country = 'USA'
;
-- Query5: Display customer data living in USA and are males
SELECT *
FROM ecommerce_db.customers
where country='USA'
AND gender = 'male'
;
-- Query6: Calculate total number of customers 
SELECT COUNT(*) as total_customer
FROM ecommerce_db.customers;

-- Query7: Calculate total number of customers per country 
SELECT COUNT(*) as Customer_count_country
FROM ecommerce_db.customers
GROUP BY country
ORDER BY Customer_count_country DESC;

-- Query8: Calculate age of each customer based on date of birth

-- Add age coulumn in customer Table and populate! This SQL query will create a column with NULL values 
ALTER TABLE  ecommerce_db.customers
ADD Age INT;

-- Update SQL query will populate the age of each customer 
UPDATE ecommerce_db.customers
SET age= TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())
WHERE age IS NULL ;

SELECT *
FROM ecommerce_db.customers;


-- Query9: Calculate average age




SELECT ROUND(AVG(TIMESTAMPDIFF(Year,date_of_birth, CURDATE())),0) as Avg_age
From ecommerce_db.customers;




SELECT ROUND(AVG(age),0) as Avg_age
From ecommerce_db.customers;