-- Active: 1673067490537@@127.0.0.1@5432@sales_example
SELECT * FROM sales
WHERE volume > 1000;
SELECT * FROM sales
WHERE is_recurring IS TRUE; -- = 0

SELECT * FROM sales
WHERE is_disputed IS TRUE AND (volume > 5000);