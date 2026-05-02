-- Find the average scores of the customers
USE SalesDB

SELECT
	CustomerID,
	Score,
	AVG(Score) OVER () AvgScores,
	AVG(COALESCE(Score, 0)) OVER () AvgScoreRight
FROM Sales.Customers