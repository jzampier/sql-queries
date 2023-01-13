-- Active: 1673125002031@@127.0.0.1@5432@relations
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
    INNER JOIN cities AS c ON a.city_id = c.id
WHERE
    c.id = 1
    OR c.id = 2
ORDER BY
    c.id DESC;