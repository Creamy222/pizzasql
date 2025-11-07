SELECT * FROM pizza_schema.order_details;

SELECT * FROM pizza_schema.orders;

SELECT * FROM pizza_schema.pizza_types;

SELECT * FROM pizza_schema.pizzas;

-- 1 Find all orders placed on '2015-01-01'.
SELECT * FROM pizza_schema.orders WHERE date = '2015-01-01';

-- Get all pizzas that are size 'XL'.
SELECT * FROM pizza_schema.pizzas WHERE size = 'XL';

-- Count how many times each pizza_id appears in order_details.
SELECT pizza_id, count(quantity) AS total_count FROM pizza_schema.order_details
GROUP BY pizza_id;

-- Count how many orders were placed on each date.
SELECT date, COUNT(*) AS total_orders 
FROM pizza_schema.orders
GROUP BY date 
ORDER BY date;

-- Find pizzas that were ordered more than 50 times.
SELECT pizza_id, COUNT(*) AS total_count 
FROM pizza_schema.order_details 
GROUP BY pizza_id 
HAVING COUNT(*) > 50;

-- Identify dates where more than 100 orders were placed.
SELECT date, COUNT(*) AS total_orders 
FROM pizza_schema.orders 
GROUP BY date 
HAVING COUNT(*) > 100;

-- Retrieve the top 5 most expensive pizzas.
SELECT * FROM pizza_schema.pizzas 
ORDER BY price DESC 
LIMIT 5;

-- Retrieve the earliest 5 orders placed.
SELECT * FROM pizza_schema.orders 
ORDER BY date ASC 
LIMIT 5;

-- Get the cheapest and most expensive pizza prices.
SELECT MIN(price) AS cheapest_price, MAX(price) AS most_expensive_price 
FROM pizza_schema.pizzas;

