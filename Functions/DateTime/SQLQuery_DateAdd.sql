USE SalesDB;

SELECT
	OrderID,
	ProductID,
	OrderDate,
	DATEADD(day, -4, OrderDate) AS ForDaysBefore,
	DATEADD(month, 3, OrderDate) AS ThreeMonthsAfter,
	DATEADD(year, 2, OrderDate) AS TwoYearsAfter
FROM Sales.Orders