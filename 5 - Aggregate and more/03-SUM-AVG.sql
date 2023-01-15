-- Active: 1673067490537@@127.0.0.1@5432@restaurants
SELECT
    SUM(amount_billed)
FROM
    bookings;

SELECT
    ROUND(AVG(num_guests), 2)
FROM
    bookings;

SELECT
    ROUND(AVG(amount_tipped), 2) AS avg_tip
FROM
    bookings;