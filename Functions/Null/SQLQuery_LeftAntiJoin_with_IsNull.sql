/* List all details for customers who have not
placed any orders
*/
USE SalesDB

SELECT
	c.*, --seleciona tudo na primeira tabela Customers
	o.OrderID
FROM Sales.Customers AS c
LEFT JOIN Sales.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL