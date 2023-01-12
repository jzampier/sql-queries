-- Active: 1673067490537@@127.0.0.1@5432@sales_example
SELECT * FROM sales
WHERE date_created > '2021-11-01' AND date_created < '2022-05-01'
ORDER BY date_created;

SELECT * FROM sales
WHERE date_created BETWEEN '2021-11-01' AND '2022-05-01';

SELECT * FROM sales
WHERE volume BETWEEN 1000 AND 10000

--*5.18