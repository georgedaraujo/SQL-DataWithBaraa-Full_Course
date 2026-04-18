-- Delete all data from table persons

SELECT *
FROM persons;

TRUNCATE TABLE persons;

/*TRUNCATE remove all rows from a table. However, it is faster
and more efficiently than DELETE, because it doesn't remove line by line
and it doesn't need WHERE clause.
*/