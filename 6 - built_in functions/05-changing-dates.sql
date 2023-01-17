SELECT
    NOW(),
    membership_start + 7 AS membership_7
FROM
    memberships;

-- !PostgreSQL
SELECT
    membership_start - 7 AS membership_7
FROM
    memberships;

--? MySQL
SELECT
    DATE_ADD(membership_start, INTERVAL 7 DAY)
FROM
    memberships;

-- !PostgreSQL
SELECT
    (membership_start + INTERVAL '7 MONTH') :: TIMESTAMP :: DATE,
    membership_start,
    NOW() :: TIMESTAMP :: DATE
FROM
    memberships;