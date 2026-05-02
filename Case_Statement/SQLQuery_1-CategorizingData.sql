/* Generate a report showing the total sales for each category:
- HIGH: if the sales higher than 50
- MEDIUM: if the sales between 20 and 50
- LOW: if the sales equal or lower than 20
Sort the result from lowest to highest
*/
USE SalesDB

SELECT
	Category,
	SUM(Sales) AS TotalSales
FROM(
	SELECT 
		OrderId,
		Sales,
	/*
		CASE
			WHEN Sales > 50 THEN Category = 'High'
			WHEN Sales > 20 AND Sales <= 50 THEN Category ='Medium'
			WHEN Sales <= 20 THEN Category ='Low'
		END
	Obs: A coluna é definida no END
	*/
		CASE 
			WHEN Sales > 50 THEN 'High'
			WHEN Sales > 20 THEN 'Medium'
			ELSE 'Low'
		END Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC
