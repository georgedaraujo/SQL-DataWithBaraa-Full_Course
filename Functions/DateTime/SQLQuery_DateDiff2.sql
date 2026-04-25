-- Find the average shipping duration in days for each month

SELECT 
	FORMAT(OrderDate, 'MMMM') AS MonthShip,
	AVG(DATEDIFF(day, OrderDate, ShipDate)) AS AvgToShip
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMMM')


/* Solução exibindo os meses em numeros, como no vídeo

SELECT 
	MONTH(OrderDate) AS OrderDate, 
	AVG(DATEDIFF(day, OrderDate, ShipDate)) AS AvgToShip 
FROM Sales.Orders GROUP BY MONTH(OrderDate)

*/