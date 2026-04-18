

SELECT country, SUM(score) AS total_score
FROM customers
-- WHERE score > 400
GROUP BY country
HAVING SUM(score) > 800