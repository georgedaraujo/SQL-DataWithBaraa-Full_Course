-- Find the total score for each country

SELECT 
	country,
	SUM(score) AS total_score --consigo definir nome de coluna para novo resultado
FROM customers
GROUP BY country
ORDER BY total_score DESC