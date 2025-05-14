--SQL Reatil Sale Analysis Project1--



--Create Table--
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales(
			 transactions_id INT PRIMARY KEY,	
			 sale_date DATE,	
			 sale_time TIME,	
			 customer_id INT,	
			 gender	VARCHAR(15),
			 age INT,
			 category VARCHAR(15),	
			 quantiy INT,
			 price_per_unit FLOAT,	
			 cogs FLOAT,
			 total_sale FLOAT
)



--To Find Null Rows--
SELECT * FROM retail_sales
WHERE
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 gender IS NULL
	 OR
	 category IS NULL
	 OR
	 quantiy IS NULL
	 OR
	 cogs IS NULL
	 OR
	 total_sale IS NULL;



--To Delete Null Rows--
DELETE FROM retail_sales
WHERE
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 gender IS NULL
	 OR
	 category IS NULL
	 OR
	 quantiy IS NULL
	 OR
	 cogs IS NULL
	 OR
	 total_sale IS NULL;



------------ DATA ANALYSIS--------------------


-- 1. View first 10 rows
SELECT * FROM retail_sales LIMIT 10;


-- 2. Count total transactions
SELECT COUNT(*) FROM retail_sales;

-- 3. Find unique product categories
SELECT DISTINCT category FROM retail_sales;


-- 4. Count of unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM retail_sales;


-- 5. Gender distribution
SELECT gender, COUNT(*) AS total FROM retail_sales GROUP BY gender;


-- 6. Average age of customers
SELECT AVG(age) AS average_age FROM retail_sales;


-- 7. Total sales
SELECT SUM(total_sale) AS total_revenue FROM retail_sales;

-- 8. Average price per unit
SELECT AVG(price_per_unit) AS avg_price FROM retail_sales;


-- 9. Total quantity sold by category
SELECT category, SUM(quantiy) AS total_quantity
FROM retail_sales
GROUP BY category;


-- 10. Total sales by day
SELECT sale_date, SUM(total_sale) AS daily_sales
FROM retail_sales
GROUP BY sale_date
ORDER BY sale_date;


-- 11. Peak sales hour
SELECT sale_time, SUM(total_sale) AS sales
FROM retail_sales
GROUP BY sale_time
ORDER BY sales DESC
LIMIT 1;


-- 12. Total profit (Revenue - COGS)
SELECT SUM(total_sale - cogs) AS total_profit FROM retail_sales;


-- 13. Profit by category
SELECT category, SUM(total_sale - cogs) AS profit
FROM retail_sales
GROUP BY category
ORDER BY profit DESC;


-- 14. Check for nulls
SELECT 
  COUNT(*) FILTER (WHERE transactions_id IS NULL) AS missing_id,
  COUNT(*) FILTER (WHERE sale_date IS NULL) AS missing_date,
  COUNT(*) FILTER (WHERE customer_id IS NULL) AS missing_customer
FROM retail_sales;


-- 15. Check for negative sales or quantities
SELECT * FROM retail_sales
WHERE quantiy < 0 OR total_sale < 0;


---------------------------------------------------------------------------------------------------------------------






