
-- Product Analysis-- 
-- Query1: Calculate total Revenue based on product category

SELECT  p.category, SUM(oi.quantity * p.price) AS total_revenue
FROM ecommerce_db.order_items AS oi
JOIN ecommerce_db.products AS p ON oi.product_id=p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
