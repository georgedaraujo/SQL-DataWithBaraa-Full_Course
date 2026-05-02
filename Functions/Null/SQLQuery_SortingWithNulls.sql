/* Sort the customers from lowest to highest scores,
with nulls appearing last
*/

USE SalesDB

SELECT
	CustomerID,
	FirstName,
	Score
FROM Sales.Customers 
ORDER BY CASE WHEN Score IS NULL 
	THEN 1 ELSE 0
END, Score
-- o Case When usa um segundo parametro (os nulos) para ordenar 