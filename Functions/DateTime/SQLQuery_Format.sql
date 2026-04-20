USE SalesDB;

SELECT
	OrderId,
	CreationTime,
	FORMAT(CreationTime, 'dd/MM/yyyy') AS DiaMesAno,
	FORMAT(CreationTime, 'ddd') AS DiaSemanaAbv,
	FORMAT(CreationTime, 'dddd') AS DiaSemana,

	FORMAT(CreationTime, 'MM') AS MêsNum,
	FORMAT(CreationTime, 'MMM') AS MêsAbv,
	FORMAT(CreationTime, 'MMMM') AS Mês
FROM Sales.Orders