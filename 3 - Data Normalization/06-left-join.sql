-- Active: 1673125002031@@127.0.0.1@5432@relations
SELECT
    *
FROM
    -- left table
    addresses AS a
    LEFT JOIN users AS u ON a.id = u.address_id;

--* Multiple LEFT JOINs
SELECT
    *
FROM
    -- left table
    addresses AS a
    LEFT JOIN users AS u ON a.id = u.address_id
    LEFT JOIN cities AS c ON c.id = a.city_id;