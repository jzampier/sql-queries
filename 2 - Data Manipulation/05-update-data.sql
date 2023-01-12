-- Active: 1673067291495@@127.0.0.1@3306@sales_example
UPDATE sales
SET
    product_name = 'A truck',
    volume = volume * 1000
WHERE id = 13;