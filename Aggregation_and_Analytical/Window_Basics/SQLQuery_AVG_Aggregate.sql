USE SalesDB;

-- find the average sales across all orders
-- and the average sales for each product
-- provide details such as orderID and order date

SELECT
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	AVG(Sales) OVER() AS TotalAverage,
	AVG(Sales) OVER(PARTITION BY ProductID) AS ProdAvg
FROM Sales.Orders;

-- find the average scores of customers
-- provide details such CustomerID and LastName

SELECT 
	CustomerID,
	LastName,
	Score,
	AVG(Score) OVER() AS ScoreAVGNull,
	AVG(COALESCE (Score, 0)) OVER() AS ScoreAVGCoal
FROM Sales.Customers;

-- find all orders where sales are higher than the average sales
-- across all orders
SELECT
	*
FROM(
	SELECT
		OrderID,
		Sales,
		AVG(Sales) OVER() AS TotalAvg
	FROM Sales.Orders
)t WHERE Sales > TotalAvg
