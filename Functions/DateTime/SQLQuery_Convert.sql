USE SalesDB

SELECT 
	CONVERT(INT, '123') AS [String to Int],
	CONVERT(DATE, '2026-04-20') AS [String to Date],
	CONVERT(DATE, CreationTime) AS [Datetime to Date]
FROM Sales.Orders