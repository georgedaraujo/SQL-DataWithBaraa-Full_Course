/* FULL ANTI JOIN
Returns only rows that don't match in either tables

SELECT * FROM A FULL JOIN B
ON A.key = B.key WHERE B.key IS NULL
OR A.key IS NULL
*/

-- Find customers without orders and orders withou customers
USE MyDatabase;

SELECT * FROM customers AS c
SELECT * FROM orders AS o

SELECT * FROM customers AS C
FULL JOIN orders AS o 
ON c.id = o.customer_id 
WHERE c.id IS NULL OR o.customer_id IS NULL;

