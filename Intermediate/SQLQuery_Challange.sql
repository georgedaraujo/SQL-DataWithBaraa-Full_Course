/* Get all customers along with their orders, 
but only for customers who have placed an order
(Without using INNER JOIN)
*/

Use MyDatabase;


/*SELECT * FROM customers AS c
INNER JOIN orders AS o 
ON c.id = o.customer_id;
*/

SELECT 
	c.id,
	c.first_name,
	c.country,
	c.score,
	o.order_id,
	o.order_date
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id;

--SELECT * FROM customers;
--SELECT * FROM orders;
