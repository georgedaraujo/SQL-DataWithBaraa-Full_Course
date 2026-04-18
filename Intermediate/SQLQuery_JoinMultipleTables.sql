/* Using SalesDB, retrieve a list of 
all orders, along with the related customers,
product, and employee details

For each order, display:
- Order ID
- Customer's name
- Product name
- Sales amount
- Product price
- Salesperson's name
*/

USE SalesDB;

--SELECT * FROM Sales.Employees;
--SELECT * FROM Sales.Orders;

SELECT 
	o.OrderID,
	c.FirstName AS CustomerFirstName,
	c.LastName AS CustomerLastName,
	p.Product AS ProductName,
	o.Sales,
	p.Price,
	e.FirstName AS SalesPersonName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c 
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID;
