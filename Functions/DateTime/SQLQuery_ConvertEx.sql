SELECT
	FORMAT(OrderDate, 'MMM yy') AS OrderDate,
	COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')