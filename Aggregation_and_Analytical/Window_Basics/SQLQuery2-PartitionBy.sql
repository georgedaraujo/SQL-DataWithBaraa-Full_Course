USE SalesDB

-- Find the total sales across all orders
-- Provide details such Order ID, Order Date


--SELECT * FROM Sales.Orders

SELECT 
	OrderID,
	OrderDate,
	SUM(Sales) OVER () AS TotalSales
FROM Sales.Orders
