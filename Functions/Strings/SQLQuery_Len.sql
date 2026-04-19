-- calculate the length of each customer's first name

USE MyDatabase;

SELECT
	first_name,
	LEN(TRIM(first_name)) AS name_size
FROM customers

