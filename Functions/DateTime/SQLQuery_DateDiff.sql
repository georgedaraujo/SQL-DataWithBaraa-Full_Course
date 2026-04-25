-- Calculate de age of employees

SELECT 
	EmployeeID,
	FirstName,
	BirthDate,
	DATEDIFF(year, BirthDate, GETDATE()) AS Age

FROM Sales.Employees

