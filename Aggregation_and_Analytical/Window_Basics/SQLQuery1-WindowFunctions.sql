USE SalesDB;
--SELECT * FROM Sales.Orders;

-- Find the total sales across all orders

SELECT
	SUM(Sales) AS TotalSales
FROM Sales.Orders;

-- Find the total sales for each product

SELECT
	ProductID,
	SUM(Sales) AS TotalSales
FROM Sales.Orders
GROUP BY ProductID;

/* Find the total sales for each product, additionally
provide details such order id & order date

Obs: Use GROUP BY cause the following error
Column 'Sales.Orders.OrderID' is invalid in the select list because
it is not contained in either an aggregate function or the GROUP BY

So, use Window Function

*/

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	SUM(Sales) OVER (PARTITION BY ProductID) TotalSalesByProd
FROM Sales.Orders



