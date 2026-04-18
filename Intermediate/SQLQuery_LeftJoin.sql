/* Get all customers along with their orders,
including those without orders.
*/

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
	c.id,
	c.first_name,
	c.country,
	c.score,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;