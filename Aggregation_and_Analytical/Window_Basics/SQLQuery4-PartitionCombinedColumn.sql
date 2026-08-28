/* Find the total sales for each combination of
product and order status
*/

--SELECT * FROM Sales.Orders

SELECT
	OrderID,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus ORDER BY OrderStatus) AS SalesByPrdStatus
FROM Sales.Orders