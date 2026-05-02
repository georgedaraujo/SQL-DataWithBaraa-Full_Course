-- Retrieve customer details with abbreviated country code

SELECT
	CustomerId,
	FirstName,
	LastName,
	Country,

	CASE Country
		WHEN 'Germany' THEN 'DE'
		WHEN 'USA' THEN 'US'
		ELSE 'n/a'
	END CountryCode

FROM Sales.Customers