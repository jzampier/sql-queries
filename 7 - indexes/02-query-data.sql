-- Active: 1673125002031@@127.0.0.1@5432@indexes
SELECT
    *
FROM
    users
WHERE
    salary > 12000;

EXPLAIN ANALYZE
SELECT
    *
FROM
    users
WHERE
    salary > 12000;