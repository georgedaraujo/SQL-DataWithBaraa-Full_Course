SELECT 
	CreationTime,
	DATETRUNC(MINUTE, CreationTime) AS NoSeconds,
	DATETRUNC(HOUR, CreationTime) AS NoMinutes,
	DATETRUNC(YEAR, CreationTime) AS OnlyYear
FROM Sales.OrdersArchive