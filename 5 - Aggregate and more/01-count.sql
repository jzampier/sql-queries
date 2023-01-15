-- Active: 1673067490537@@127.0.0.1@5432@restaurants
SELECT
    COUNT(*)
FROM
    bookings;

SELECT
    COUNT(amount_tipped)
FROM
    bookings;

SELECT
    COUNT(DISTINCT booking_date)
FROM
    bookings -- *8.4