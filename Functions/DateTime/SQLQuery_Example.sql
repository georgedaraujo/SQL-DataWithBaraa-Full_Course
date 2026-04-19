-- How many orders were placed each year
SELECT 
	DATENAME(month, OrderDate)
FROM Sales.Orders

SELECT 
	YEAR(OrderDate),
	COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate);

-- How many order were placed each month

SELECT
	DATENAME(month, OrderDate),
	COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate);
