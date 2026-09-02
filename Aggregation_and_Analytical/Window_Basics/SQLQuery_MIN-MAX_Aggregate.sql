USE SalesDB;

-- find the highest and lowest sales across all orders
-- find the highest and lowest sales for each product
-- provide details such as ordeID and orderDate

SELECT
	OrderID,
	ProductID,
	Sales,
	OrderDate,
	MAX(Sales) OVER() AS MaximumSales,
	MIN(Sales) OVER() AS MinimumSales
FROM Sales.Orders;

SELECT
	OrderId,
	ProductId,
	Sales,
	OrderDate,
	MAX(Sales) OVER(PARTITION BY ProductID) AS MaxProdSales,
	MIN(Sales) OVER(PARTITION BY ProductID) AS MinProdSales
FROM Sales.Orders;

-- show the employees with the highest salaries
SELECT * FROM
(
	SELECT
		EmployeeID,
		FirstName,
		LastName,
		Salary,
		MAX(Salary) OVER() AS HighestSalary

	FROM Sales.Employees
)AS t WHERE Salary = HighestSalary


-- find teh deviation of each sales from the minimun
-- and maximum sales amount

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	MAX(Sales) OVER() AS HighestSale,
	MIN(Sales) OVER() AS MinimunSale,
	Sales - MIN(Sales) OVER() AS DeviatMin,
	MAX(Sales) OVER() - Sales AS DeviatMax

FROM Sales.Orders;