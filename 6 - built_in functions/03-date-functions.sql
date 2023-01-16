SELECT
    *
FROM
    memberships;

SELECT
    EXTRACT(
        MONTH
        FROM
            last_checkin
    )
FROM
    memberships;

SELECT
    EXTRACT(
        DAY
        FROM
            last_checkin
    )
FROM
    memberships;

SELECT
    EXTRACT(
        MINUTE
        FROM
            last_checkin
    )
FROM
    memberships;

--!Day of week
SELECT
    EXTRACT(
        DOW
        FROM
            last_checkin
    )
FROM
    memberships;

SELECT
    WEEKDAY(last_checkin)
FROM
    memberships;

-- ?MySQL
SELECT
    CONVERT (last_checkin, DATE),
    CONVERT(last_checkin, TIME)
FROM
    memberships;

--!PostgreSQL
SELECT
    last_checkin :: TIMESTAMP :: DATE,
    last_checkin :: TIMESTAMP :: TIME
FROM
    memberships;

-- *9.7