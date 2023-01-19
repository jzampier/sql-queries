SELECT
    *
FROM
    event
WHERE
    max_participants = 10;

SELECT
    *
FROM
    event
WHERE
    date_planned >= '2022-06-01'
    OR min_age = 20;

SELECT
    *
FROM
    event
ORDER BY
    date_planned ASC;

SELECT
    e.id,
    e.name,
    e.date_planned,
    l.title,
    l.city_name
FROM
    event AS e
    INNER JOIN location AS l ON e.location_id = l.id;

SELECT
    e.id,
    e.name,
    e.date_planned,
    l.title,
    l.city_name,
    u.first_name,
    u.last_name
FROM
    event AS e
    INNER JOIN location AS l ON e.location_id = l.id
    INNER JOIN event_user AS eu ON eu.event_id = e.id
    INNER JOIN users AS u ON eu.user_id = u.id;

SELECT
    *
FROM
    location AS l
    LEFT JOIN event AS e ON e.location_id = l.id;

SELECT
    *
FROM
    city AS c
    LEFT JOIN location AS l ON c.name = l.city_name
    LEFT JOIN event AS e ON e.location_id = l.id
WHERE
    c.name = 'Munich';

SELECT
    *
FROM
    users
WHERE
    first_name LIKE 'Ma%';

SELECT
    COUNT(id)
FROM
    location
WHERE
    city_name = 'Munich';

-- *How many locations per city?
SELECT
    c.name,
    COUNT(l.id)
FROM
    city AS c
    LEFT JOIN location AS l ON l.city_name = c.name
GROUP BY
    c.name;

SELECT
    c.name,
    COUNT(l.id)
FROM
    city AS c
    LEFT JOIN location AS l ON l.city_name = c.name
GROUP BY
    c.name
HAVING
    COUNT(l.id) >= 2;