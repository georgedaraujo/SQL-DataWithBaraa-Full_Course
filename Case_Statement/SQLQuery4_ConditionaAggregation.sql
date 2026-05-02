/* Count how many times each customer has made an order
with sales greater than 30
*/

SELECT 
	CustomerID,
	Sales
FROM Sales.Orders
ORDER BY CustomerID

SELECT
	CustomerID,
	COUNT(CASE 
			WHEN Sales > 30 THEN 1 
		END) AS TotalSales
	
FROM Sales.Orders
GROUP BY CustomerID

---- ANOTHER FORM

SELECT 
	CustomerID,
	SUM(CASE
			WHEN Sales > 30 THEN 1
			ELSE 0
		END) TotalSales
FROM Sales.Orders
GROUP BY CustomerID