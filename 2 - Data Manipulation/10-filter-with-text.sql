-- Active: 1673125002031@@127.0.0.1@5432@sales_example
SELECT * FROM sales
WHERE customer_name <> 'Max Schwarz';

SELECT * FROM sales
WHERE customer_name > 'Company A'  --Alphabetic order
ORDER BY customer_name;