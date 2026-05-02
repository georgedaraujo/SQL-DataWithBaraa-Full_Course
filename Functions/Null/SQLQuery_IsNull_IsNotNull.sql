-- Identify the customers who have no scores

SELECT
	CustomerID,
	FirstName,
	Score
FROM Sales.Customers
WHERE Score IS NULL

-- List only the customers who have scores
SELECT
	CustomerID,
	FirstName,
	Score
FROM Sales.Customers
WHERE Score IS NOT NULL