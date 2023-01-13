-- Active: 1673124617232@@127.0.0.1@3306@relations
SELECT
    u.id,
    u.first_name,
    u.last_name,
    a.street,
    a.house_number,
    a.city_id,
    c.name AS city_name
FROM
    users AS u
    INNER JOIN addresses AS a ON u.address_id = a.id
    INNER JOIN cities AS c ON a.city_id = c.id;