# E-commerce Sales Analysis

## Project overview 
This project demonstrates the end-to-end setup and analysis of a simplified e-commerce database using SQL queries. The database was fully designed, created, and populated manually to simulate real-world data and extract meaningful insights.

## Project Summary:

We built a small e-commerce system with the following workflow:

1. DATABASE SCHEMA DESIGN: identified core entities such as customers, products, orders, and order\_items.
2. TABLE CREATION: The 'CREATE TABLE' statement is used to define the structure and relationships using primary and foreign keys.
3. DATA INSERTION: 10 sample rows were inserted into each table using realistic and varied values.
4. SQL Queries: To analyze customer behavior, product sales, and overall business performance.


## Database Structure

 `Customers`:    Stores customer details (customer\_id(PK) AUTO ,customer\_name, email, country, gender, date\_of\_birth, signup date, is\_premium)   



 `Products`:     Store product details (product\_id(PK) AUTO ,product name, category, and price )                                                                                                                           

 `Orders` :      Store order details (order\_id(PK)  AUTO, customer\_id(FK), order\_date)                                

 `Order\_Items`:  Stores(order\_items\_id(PK)  AUTO, order\_id(FK), product\_id(FK) quantity )           

 1. **Create Database** 

     Using `CREATE TABLE` statements, four normalized tables were created with appropriate keys and constraints.

2. **Insert Sample Data** 
      Each table populated with 10 rows of sample data using `INSERT INTO` statements. The values reflect realistic customer profiles, product details, order dates, and purchase behavior.

3. **Execut SQL Analytical Queries** 

        - Customer Analysis
            1. Total customers
            2. Gender distribution
            3. Premium vs Regular customers
            4. Customer Age based on date\_of\_birth
            5. Average customer age
            6. Country distribution
            7. Monthly signups

        -Product Analysis
            1. Total revenue based on category
            2. Top 5 best-selling products
            3. Available products

         -Order Analysis
            1. Total number of orders
            2. Orders per customer
            3. Recent orders
            4. Customers who never ordered

        -Revenue Analysis
            1. Total Revenue
            2. Revenue per customer
            3. Average order value
            4. Premium vs non-premium behavior

4. **Files Included**

    `schema.sql`: SQL code to create all tables 

    `data.sql`:   SQL code to insert data into the tables 

    `queries/`:   Folder containing 5 files, grouped by topic  
 
    `images/`:   Folder containing ER diagram  

    `README.md`:   This is documentation file    
# **How to Use** 

1. Run `schema.sql` to create the schema and tables 
2. Run `data.sql` to insert data into the tables 
3.  Open and run any of the queries from the `queries/` directory in your SQL editor.


*Comments*:

This project reflects how SQL can be used not only for querying but for building a meaningful analytical environment from scratch. Everything from schema design to analysis was created manually to simulate real data analysis work.