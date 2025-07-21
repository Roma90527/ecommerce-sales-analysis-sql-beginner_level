
-- Customer Values-- 
-- Query1: Calculate Top 5 customers by total amount spent

SELECT c.customer_name, SUM(oi.quantity*p.price) AS total_spent
FROM ecommerce_db.customers AS c
JOIN ecommerce_db.orders AS o ON c.customer_id=o.customer_id
JOIN ecommerce_db.order_items AS oi ON o.order_id= oi.order_id
JOIN ecommerce_db.products AS p ON oi.product_id=p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- Query1: Calculate Top 5 customers by total amount spent
SELECT c.gender, SUM(oi.quantity*p.price) AS total_spent
FROM ecommerce_db.customers AS c
JOIN ecommerce_db.orders AS o ON c.customer_id=o.customer_id
JOIN ecommerce_db.order_items AS oi ON o.order_id= oi.order_id
JOIN ecommerce_db.products AS p ON oi.product_id=p.product_id
GROUP BY c.gender

