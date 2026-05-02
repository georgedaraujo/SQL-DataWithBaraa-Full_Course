-- Retrieve employee details with gender displayed as full text

USE SalesDB

SELECT 
	EmployeeId,
	FirstName,
	LastName,
	Department,
	BirthDate,
	Salary,
	
	CASE
		WHEN Gender = 'M' THEN 'Male'
		WHEN Gender = 'F' THEN 'Female'
		ELSE 'Not Aviable'
	END Gender
	
FROM Sales.Employees;