SELECT * FROM customers;

SELECT
	first_name,
	COUNT(*) AS TotalCustomers,
	SUM(score) AS TotalScores,
	AVG(score) AS AverageScore,
	MAX(score) AS HighestScore,
	MIN(score) AS LowestScore
FROM customers
GROUP BY first_name
ORDER BY TotalScores DESC;