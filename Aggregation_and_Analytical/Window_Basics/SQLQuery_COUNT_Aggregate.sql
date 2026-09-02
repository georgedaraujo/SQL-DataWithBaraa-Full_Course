-- Find the total number of Orders --
USE SalesDB;

SELECT
	COUNT(*) AS TotalOrders
FROM Sales.Orders;

-- Find the total number of Orders
-- Provide details such orderId and orderDate

SELECT
	OrderID,
	OrderDate,
	COUNT(*) OVER() AS TotalOrders
FROM Sales.Orders;

-- Find the total number of Orders for each customers

SELECT
	OrderID,
	CustomerID,
	COUNT(*) OVER(PARTITION BY CustomerID) AS TotalOrderCust
FROM Sales.Orders;

-- Find the total number of Customers
-- Additionally provide all customers Details

SELECT
	*,
	COUNT(*) OVER() AS TotalCustomers
FROM Sales.Customers;

-- Find the total number of scores for the customers

SELECT
	*,
	COUNT(Score) OVER() AS NumberScores
FROM Sales.Customers;


-- Check whether the table 'OrdersArchive' contais duplicates
SELECT * FROM
(
	SELECT
		OrderID,
		COUNT(*) OVER (PARTITION BY OrderID) AS CheckPK
	FROM Sales.OrdersArchive
)t WHERE CheckPK > 1

/*
A parte entre parênteses é uma subconsulta 
(também chamada de tabela derivada):
O SQL Server exige que uma tabela derivada tenha um nome/alias.
Nesse caso, foi escolhido simplesmente t.
Então, conceitualmente, você pode imaginar:

SELECT *
FROM [resultado da subconsulta] AS t
WHERE CheckPK > 1

O AS é opcional para aliases de tabelas no SQL Server, 
portanto estas duas formas são equivalentes.

/*
