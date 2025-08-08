use e_commerce;
-- Count of products
SELECT COUNT(*) AS total_products
FROM products;

-- Average price of products
SELECT AVG(price) AS avg_price
FROM products;

--  Maximum and minimum product price
SELECT MAX(price) AS highest_price,
       MIN(price) AS lowest_price
FROM products;

-- Total quantity of stock available
SELECT SUM(stock_quantity) AS total_stock
FROM products;

-- Count of customers
SELECT COUNT(*) AS total_customers
FROM customers;

--  Total payments received
SELECT SUM(amount) AS total_payments
FROM payments;

-- Average payment amount
SELECT AVG(amount) AS avg_payment
FROM payments;

--  Highest payment made
SELECT MAX(amount) AS highest_payment
FROM payments;


-- Count of products per category
SELECT category_id, COUNT(*) AS total_products
FROM products
GROUP BY category_id;

-- Average product price per category
SELECT category_id, AVG(price) AS avg_price
FROM products
GROUP BY category_id;

-- Orders per customer
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

SELECT * FROM orders;

--  amount per method
SELECT * FROM payments;

SELECT method, SUM(amount) AS total_amount
FROM payments
GROUP BY method;

-- Orders per status
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;


--  more than 1 product
SELECT category_id, COUNT(*) AS product_count
FROM products
GROUP BY category_id
HAVING COUNT(*) > 1;

--  more than 1 order
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- total amount above ₹50,000
SELECT method, SUM(amount) AS total_amount
FROM payments
GROUP BY method
HAVING SUM(amount) > 50000;

-- having more than 1 order
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status
HAVING COUNT(*) > 1;
