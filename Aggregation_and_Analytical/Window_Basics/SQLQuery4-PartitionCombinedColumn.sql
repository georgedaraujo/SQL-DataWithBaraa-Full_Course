/* Find the total sales for each combination of
product and order status
*/

--SELECT * FROM Sales.Orders

SELECT
	OrderID,
	ProductID,
	OrderStatus,
	SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) AS SalesByPrdStatus 
FROM Sales.Orders