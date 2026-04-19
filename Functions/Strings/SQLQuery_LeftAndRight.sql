-- retrieve the first two characters of each first name

SELECT 
	first_name,
	LEFT(TRIM(first_name), 2) AS initials
FROM customers

-- retrieve the last two characters of each first name

SELECT
	first_name,
	RIGHT(TRIM(first_name), 2) AS last_chars
FROM customers