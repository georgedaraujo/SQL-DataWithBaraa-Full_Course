/* Combine data from employees and customers
into onde table.
*/

USE SalesDB;

SELECT
	FirstName,
	LastName
FROM Sales.Employees
UNION
SELECT
	FirstName,
	LastName
FROM Sales.Customers;