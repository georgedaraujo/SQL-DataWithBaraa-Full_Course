/* Display the full name of customers
in a single field, by merging their first and last names,
an add 10 bonus points to each customer's score
*/

SELECT 
	CustomerID,
	FirstName,
	LastName,
	COALESCE(FirstName, '') + ' ' + COALESCE(LastName, '') AS FullName,
	Score,
	COALESCE(Score, 0) + 10 AS NewScore
FROM Sales.Customers


