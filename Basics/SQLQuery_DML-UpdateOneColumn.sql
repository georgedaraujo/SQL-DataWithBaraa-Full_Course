-- CHange the score of customer with ID 6 to 875

SELECT * 
FROM customers

UPDATE customers
	SET score = 875
WHERE id = 6
