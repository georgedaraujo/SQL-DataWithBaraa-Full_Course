USE SalesDB;
SELECT * FROM Sales.Orders;

-- Calculate the moving average of sales for each product
-- over time

-- RUNNING TOTAL:
SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER(PARTITION BY ProductID) AS PrdAVG,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) AS DateAvg

FROM Sales.Orders
---------------------------------------------------------------------
---------------------------------------------------------------------

-- Calculate moving average of Sales for each product over time
-- including only the next order

-- ROLLING TOTAL:
SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) AS ProdAvgNext
FROM Sales.Orders