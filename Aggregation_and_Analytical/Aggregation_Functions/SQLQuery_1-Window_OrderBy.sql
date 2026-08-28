USE SalesDB;

-- Rank each order based on their sales from highest
-- to lowest, additionaly provide details such order id
-- and order date

SELECT  * FROM Sales.Orders;

SELECT
	OrderID,
	OrderDate,
	Sales,
	RANK() OVER(ORDER BY Sales DESC) RankSales
FROM Sales.Orders;