-- Add a new column called email to the persons table

SELECT * FROM persons

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;