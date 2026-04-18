-- retrieve the top 3 customers with the highest scores

SELECT *
FROM customers

SELECT TOP 3 *
FROM customers
ORDER BY score DESC