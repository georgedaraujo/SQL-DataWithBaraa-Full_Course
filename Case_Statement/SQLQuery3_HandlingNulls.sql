/*Find the average scores of customers and treat NULLs as 0
and additional provide details such CustomerID and LastName
*/

USE SalesDB

SELECT
	CustomerID,
	LastName,
	Score,
	
	CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END CleanScore,

	AVG (CASE
			WHEN Score IS NULL THEN 0
			ELSE Score
	END) OVER() AvgCustomer

FROM Sales.Customers