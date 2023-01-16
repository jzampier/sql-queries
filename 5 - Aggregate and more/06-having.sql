-- Active: 1673067490537@@127.0.0.1@5432@restaurants
SELECT
    booking_date,
    COUNT(booking_date)
FROM
    bookings
WHERE
    amount_billed > 30
GROUP BY
    booking_date;

SELECT
    booking_date,
    COUNT(booking_date)
FROM
    bookings
GROUP BY
    booking_date
HAVING
    -- verify if the grouped value is greater than 30
    SUM(amount_billed) > 30;