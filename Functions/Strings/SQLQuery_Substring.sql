-- Retrieve a list of customers' first names removing the first character

USE MyDatabase

SELECT 
	first_name,
	SUBSTRING (TRIM(first_name), 2, LEN(first_name)) AS new_names
FROM customers;