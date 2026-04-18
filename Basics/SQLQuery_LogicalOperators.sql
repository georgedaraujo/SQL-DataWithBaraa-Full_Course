/* 1. Retrieve all customers who are from USA AND
have a score greater than 500;
	2. Retrieve all customers who are either from USA
	OR have a score greater then 500
	3. Retrieve all customers with a score NOT
	less than 500
*/

SELECT *
FROM customers;

-- AND: all conditions must be TRUE
SELECT * 
FROM customers
WHERE country = 'USA' AND score > 500;

-- OR: at least one condition must be TRUE
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

-- NOT: reverse, exclude the matching values
SELECT *
FROM customers
WHERE NOT score < 500;
