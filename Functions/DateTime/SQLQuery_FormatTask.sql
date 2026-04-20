/* Show CreationTime using the following format:
	Day Wed Jan Q1 2025 12:34:56 PM
*/

SELECT 
	OrderId,
	CreationTime,
	FORMAT (CreationTime, 'dd ddd MMM yyyy hh:mm:ss tt') AS NovoFormato
FROM Sales.Orders