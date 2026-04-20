USE SalesDB
SELECT
	CAST('123' AS INT) AS [String to Int],
	CAST(123 AS VARCHAR) AS [Int to String],
	CAST('2026-04-20' AS DATE) AS [String to Date],
	CAST('2025-08-20' AS DATETIME) AS [String to DateTime],
	CAST(CreationTime AS DATE) AS [Datetime to Date]
FROM Sales.Orders
