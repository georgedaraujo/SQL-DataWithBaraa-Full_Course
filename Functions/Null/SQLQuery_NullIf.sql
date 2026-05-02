/*Find the sales price for each order
by divinding sales by quantity
*/

SELECT
 OrderId,
 Quantity,
 Sales,
-- Sales / Quantity AS Price (recebe erro 'divide by zero')
Sales / NULLIF (Quantity, 0) AS Price
FROM Sales.Orders