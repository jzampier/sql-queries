-- Active: 1673125002031@@127.0.0.1@5432@sales_example@public
UPDATE sales
SET
    date_created = '2022-01-12',
    volume = volume * 1000
WHERE id = 3;

UPDATE sales
SET
    date_created = '2022-01-12'
WHERE id = 3;