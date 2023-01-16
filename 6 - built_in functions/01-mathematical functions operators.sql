-- Active: 1673067490537@@127.0.0.1@5432@gym
SELECT
    price * billing_frequency AS annual_revenue
FROM
    memberships;

SELECT
    SUM(price * billing_frequency) AS annual_revenue
FROM
    memberships;

--!Get rid of decimals
SELECT
    CEIL(consumption)
FROM
    memberships;

--!Rounds down to the nearest integer
SELECT
    FLOOR(consumption)
FROM
    memberships;

--!Rounds
SELECT
    ROUND(consumption, 2)
FROM
    memberships;

--!TRUNC() or TRUNCATE() MYsql
SELECT
    TRUNC(consumption, 1)
FROM
    memberships;

