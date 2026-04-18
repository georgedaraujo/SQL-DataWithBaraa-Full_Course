-- Convert the first name to lowercase

SELECT 
	first_name,
	LOWER (first_name) AS low_name
FROM customers

-- Convert the first name to uppercase

SELECT 
	first_name,
	UPPER (first_name) AS up_name
FROM customers