USE MyDatabase

-- Find the total number of orders
SELECT * FROM orders;

SELECT 
	COUNT(*) AS TotalNOrders
FROM orders;

-- Find the total sales of all orders

SELECT 
	SUM(sales) AS TotalSales
FROM orders;

-- Find the average sales of all orders

SELECT 
	AVG(sales) AS AverageSales
FROM orders;

-- Find the highest and lowest sales 

SELECT 
	MAX(sales) AS Highest,
	MIN(sales) AS Lowest
FROM orders;

-- Aggregation

SELECT
	customer_id,
	COUNT(sales) AS TotalNOrders,
	SUM(sales) AS TotalSales,
	AVG(sales) AS AverageSales,
	MAX(sales) AS HighestSale,
	MIN(sales) AS LowestSale
FROM orders
GROUP BY customer_id
ORDER BY TotalSales DESC;