SELECT
	EOMONTH('1986-12-25') FimDoMes_Geo,
	EOMONTH('1997-12-06') FimDoMes_Tati,
	EOMONTH('2018-09-03') FimDoMes_Benj,
	EOMONTH('2026-02-05') FimDoMes_Fev,
	EOMONTH('2028-02-05') FimDoMes_FevBis

	-- Para conseguir o primeiro dia do mês
SELECT
	CAST(DATETRUNC(month, '1986-12-25') AS DATE) IniDoMes_Geo,
	CAST(DATETRUNC(month, '1997-12-06') AS DATE) IniDoMes_Tati,
	CAST(DATETRUNC(month, '2018-09-03') AS DATE) IniDoMes_Benj,
	CAST(DATETRUNC(month, '2026-02-05') AS DATE) IniDoMes_Fev,
	CAST(DATETRUNC(month, '2028-02-05') AS DATE) IniDoMes_FevBis