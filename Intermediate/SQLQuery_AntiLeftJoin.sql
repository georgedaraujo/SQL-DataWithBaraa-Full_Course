/* LEFT ANTI JOIN
Returns row from left that has NO MATCH in right
SELECT * FROM A LEFT JOIN B
ON A.Key = B.Key WHERE B.Key IS NULL
*/

-- Get all customers who haven't placed any order
USE MyDatabase;

SELECT * FROM orders;
SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id WHERE customer_id IS NULL;