-- Active: 1673067490537@@127.0.0.1@5432@restaurants
SELECT
    MAX(num_seats)
FROM
    TABLES;

SELECT
    MIN(num_seats)
FROM
    TABLES;

SELECT
    MAX(amount_billed) AS max_billed,
    MAX(amount_tipped) AS max_tipped
FROM
    bookings;

SELECT
    MIN(category),
    MAX(category)
FROM
    TABLES;

SELECT
    MIN(booking_date),
    MAX(booking_date)
FROM
    bookings;