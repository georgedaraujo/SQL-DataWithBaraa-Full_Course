/* Retrieve all customers from either
Germany OR Usa
Retrieve all customers not from USA
*/

SELECT *
FROM customers;

SELECT * 
FROM customers
WHERE country IN ('Germany', 'USA');

SELECT *
FROM customers
WHERE country NOT IN ('USA'); 