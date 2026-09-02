-- Find the total sales across all orders
-- and the total sales for each product
-- provide details such orderID and orderdDate
USE SalesDB;

SELECT * FROM Sales.Orders;

SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	SUM(Sales) OVER() AS TotalSales,
	SUM(Sales) OVER(PARTITION BY  ProductID)

FROM Sales.Orders;

-- Find the percentage contributions of each product's
-- sales to the total sales

SELECT 
	OrderID,
	ProductID,
	Sales,
	SUM(Sales) OVER() TotalSales,
	ROUND(CAST(Sales AS Float)/SUM(Sales) OVER() * 100, 2) AS PorcentTotal
FROM Sales.Orders;