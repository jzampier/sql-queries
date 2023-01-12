-- Active: 1673067490537@@127.0.0.1@5432@sales_example
SELECT customer_name,
    product_name,
    volume,
    date_created
FROM sales;
SELECT customer_name AS Fregues,
    product_name AS Muamba,
    volume AS Quantu,
    date_created AS Quando
FROM sales;
SELECT
    'Hello World',
    15000,
    customer_name,
    product_name,
    volume / 1000 * 25 + 4,
    date_created
FROM sales;