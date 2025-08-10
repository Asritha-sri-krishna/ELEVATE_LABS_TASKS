-- Switch to the database
-- Task 4: SQL for Data Analysis
-- Dataset: Ecommerce_SQL_Database
-- Author: Asritha
-- Date: YYYY-MM-DD

-- Use the ecommerce database
DESCRIBE products;

USE ecommerce_db;

---------------------------------------------------
-- 1. Basic SELECT with WHERE, ORDER BY
---------------------------------------------------
-- Get all customers from India, ordered by name
SELECT * 
FROM customers
WHERE country = 'India'
ORDER BY name ASC;

---------------------------------------------------
-- 2. GROUP BY with aggregate functions
---------------------------------------------------
-- Total number of orders and total amount spent per customer
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

---------------------------------------------------
-- 3. INNER JOIN
---------------------------------------------------
-- List all orders with customer name and product details
SELECT o.order_id, c.name AS customer_name, p.product_id, oi.quantity
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id;

---------------------------------------------------
-- 4. LEFT JOIN
---------------------------------------------------
-- Show all customers and their orders (if any)
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

---------------------------------------------------
-- 5. RIGHT JOIN
---------------------------------------------------
-- Show all products and the orders they appear in
SELECT p.product_id,oi.order_id, oi.quantity
FROM products p
RIGHT JOIN order_items oi ON p.product_id = oi.product_id
ORDER BY p.product_id;

---------------------------------------------------
-- 6. Subquery
---------------------------------------------------
-- Find customers who spent more than the average amount
SELECT name, customer_id
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(amount) > (SELECT AVG(amount) FROM orders)
);

---------------------------------------------------
-- 7. Aggregate Functions
---------------------------------------------------
-- Average order amount
SELECT AVG(amount) AS avg_order_amount FROM orders;

-- Highest and lowest order amounts
SELECT MAX(amount) AS max_order_amount, MIN(amount) AS min_order_amount FROM orders;

---------------------------------------------------
-- 8. Create a View for analysis
---------------------------------------------------
-- View: Top product sales
CREATE OR REPLACE VIEW vw_top_product_sales AS
SELECT p.product_id, SUM(oi.quantity) AS total_quantity, SUM(oi.quantity) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_sales DESC;

-- Check the view
SELECT * FROM vw_top_product_sales;

---------------------------------------------------
-- 9. Index optimization
---------------------------------------------------
-- Add index on customer_id in orders table to speed up joins


-- Add index on product_id in order_items
CREATE INDEX idx_order_items_product_id ON order_items(product_id);



