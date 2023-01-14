-- Active: 1673125002031@@127.0.0.1@5432@relations
SELECT
    c.name AS city_name,
    a.street,
    a.house_number
FROM
    cities AS c
    INNER JOIN addresses AS a ON c.id = a.city_id;

SELECT
    c.name AS city_name,
    u.first_name,
    u.last_name,
    a.street,
    a.house_number
FROM
    cities AS c
    LEFT JOIN addresses AS a ON c.id = a.city_id
    LEFT JOIN users AS u ON u.address_id = a.id;

SELECT
    c.name AS city_name,
    u.first_name,
    u.last_name,
    a.street,
    a.house_number
FROM
    cities AS c
    INNER JOIN addresses AS a ON c.id = a.city_id
    INNER JOIN users AS u ON u.address_id = a.id;