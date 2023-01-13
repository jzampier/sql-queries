-- Active: 1673125002031@@127.0.0.1@5432@sales_example
SELECT
    DISTINCT customer_name
FROM
    sales;

SELECT
    DISTINCT customer_name
FROM
    sales
ORDER BY
    customer_name;