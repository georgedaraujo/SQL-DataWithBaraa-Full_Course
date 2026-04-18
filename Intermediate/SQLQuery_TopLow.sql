-- retrieve the lowest 2 customers based on the score

SELECT *
FROM customers


SELECT TOP 2 *
FROM customers
ORDER BY score ASC