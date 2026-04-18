 -- Remove dashes (-) from a phone number

 SELECT 
	'123-456-798' AS phone,
	REPLACE ('123-456-798', '-', '') AS clean_phone 

-- Replace File Extension from txt to csv

SELECT
	'report.txt',
	REPLACE ('report.txt', '.txt', '.csv') AS new_format
