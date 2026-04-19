-- FILTERING

/* Show all orders that were placed during
the month of February
*/

SELECT * FROM Sales.Orders
WHERE MONTH(OrderDate) = 2

/* Show the number of orders that were placed during
the month of January
*/
SELECT 
	COUNT(*) FROM Sales.Orders
WHERE MONTH(OrderDate) = 1