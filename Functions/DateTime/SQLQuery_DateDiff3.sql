/* Find the number of days between each order
and previous order (TimeGap Analysis)
*/

SELECT 
	OrderId,
	OrderDate AS CurrentOrderDate,
	LAG(OrderDate) OVER (ORDER BY OrderDate) PreviousOrder,
	DATEDIFF (day, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) AS NumberOfDays

FROM Sales.Orders