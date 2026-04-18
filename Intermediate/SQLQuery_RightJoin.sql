/* Get all customers along with their orders,
including orders without matching customers
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
RIGHT JOIN orders as o
ON c.id = o.customer_id;

/* Usar o LEFT JOIN, mas alterar a ordem das tabelas no query
tem o mesmo resultado do RIGHT JOIN e evita erros, além de padronizar
*/
SELECT
	c.id,
	c.first_name,
	c.country,
	c.score,
	o.order_id,
	o.sales
FROM orders as o
LEFT JOIN customers AS c 
ON c.id = o.customer_id;
	