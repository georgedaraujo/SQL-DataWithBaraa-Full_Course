-- Find all customers whose first name starts with 'M'

SELECT *
FROM customers;

SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose first name ends with 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Find all customers whose first name contains 'r'
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Find all customers whose first name has 't' in the third position
SELECT *
FROM customers
WHERE first_name LIKE '__t%';