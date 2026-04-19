 /* Find customers whose first name contains
 leading or trailing spaces
 */

 SELECT 
	first_name,
	TRIM(first_name) AS correct_name
FROM customers
-- WHERE first_name != TRIM(first_name)
-- The code WHERE above is a validation that shows values with spaces


