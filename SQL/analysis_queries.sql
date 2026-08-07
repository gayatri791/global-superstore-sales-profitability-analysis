-- GLOBAL SUPERSTORE SQL PROJECT

-- PostgreSQL Data Analysis



-- KPI ANALYSIS


SELECT SUM(sales) AS total_sales
FROM superstore_clean;

SELECT SUM(profit) AS total_profit
FROM superstore_clean;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore_clean;




-- CATEGORY ANALYSIS

SELECT category,
ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean
GROUP BY category
ORDER BY total_sales DESC;

SELECT category,
ROUND(SUM(profit),2) AS total_profit
FROM superstore_clean
GROUP BY category
ORDER BY total_profit DESC;




-- REGIONAL ANALYSIS

SELECT region,
ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean
GROUP BY region
ORDER BY total_sales DESC;

SELECT region,
ROUND(SUM(profit),2) AS total_profit
FROM superstore_clean
GROUP BY region
ORDER BY total_profit DESC;




-- CUSTOMER ANALYSIS

SELECT customer_name,
ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT customer_name,
ROUND(SUM(profit),2) AS total_profit
FROM superstore_clean
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;




-- PRODUCT ANALYSIS

SELECT product_name,
ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT product_name,
ROUND(SUM(profit),2) AS total_profit
FROM superstore_clean
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;




-- TIME ANALYSIS

SELECT year,
ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean
GROUP BY year
ORDER BY year;