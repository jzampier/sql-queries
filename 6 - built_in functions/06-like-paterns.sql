SELECT
    first_name LIKE 'Ma%',
    first_name
FROM
    memberships;

SELECT
    first_name LIKE '%u%',
    first_name
FROM
    memberships;

SELECT
    first_name LIKE '_a%',
    first_name
FROM
    memberships;

--!Case sensitivity 'ma% != Ma%', use ILIKE to solve case sensitivity
SELECT
    first_name ILIKE 'ma%',
    first_name
FROM
    memberships;    