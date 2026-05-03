-- Find the total sales for each product
-- Provide details such order id and order date

-- SELECT * FROM Sales.Orders;

SELECT
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS TotalSalesProd
FROM Sales.Orders