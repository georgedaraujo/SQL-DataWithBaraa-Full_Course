/* Get all customers along with their orders,
but only for customers who have placed an order
*/

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
	c.id, 
	c.first_name,
	c.country,
	o.order_id,
	o.sales
FROM customers AS c INNER JOIN orders AS o
ON c.id = o.customer_id;