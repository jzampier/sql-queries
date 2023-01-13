-- Active: 1673125002031@@127.0.0.1@5432@sales_example
-- !SELECT <columns> FROM (<subquery>) AS <subquery_name>;
SELECT customer_name, product_name
FROM (SELECT * FROM sales
WHERE volume > 1000) AS base_result;

-- ?Creating a view and storing it in base_result
CREATE VIEW base_result AS SELECT * FROM sales
WHERE volume > 1000;
SELECT customer_name, product_name
FROM base_result;

INSERT INTO top_sales (...) -- Can be used to insert data on subquery
SELECT