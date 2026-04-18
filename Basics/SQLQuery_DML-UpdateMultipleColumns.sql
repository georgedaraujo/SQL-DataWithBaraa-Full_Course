/* Change the score of customer with ID 10 to 300
and change the country to 'Chile'
*/

SELECT * 
FROM customers

UPDATE customers
	SET country = 'Chile', score = 300
WHERE id = 7

INSERT INTO customers
	VALUES 
		(8, 'Bernardo', 'France', 770),
		(9, 'Fernando', 'Spain', 690)
	