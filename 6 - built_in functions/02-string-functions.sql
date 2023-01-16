SELECT
    CONCAT(first_name, ' ', last_name)
FROM
    memberships;

SELECT
    first_name || ' ' || last_name
FROM
    memberships;

SELECT
    TRIM(
        BOTH
        FROM
            first_name,
            'Ma'
    )
FROM
    memberships;

SELECT
    CONCAT('$', price)
FROM
    memberships;

SELECT
    *
FROM
    memberships
WHERE
    LENGTH(first_name) < 4;