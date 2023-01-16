-- Active: 1673067490537@@127.0.0.1@5432@restaurants
SELECT
    booking_date,
    amount_tipped,
    SUM(amount_tipped) OVER()
FROM
    bookings;

-- Segment for each day
SELECT
    booking_date,
    amount_tipped,
    SUM(amount_tipped) OVER(PARTITION BY booking_date)
FROM
    bookings;

SELECT
    booking_date,
    amount_tipped,
    SUM(amount_tipped) OVER(
        PARTITION BY booking_date
        ORDER BY
            amount_billed
    )
FROM
    bookings;

SELECT
    booking_date,
    amount_tipped,
    RANK() OVER(
        PARTITION BY booking_date
        ORDER BY
            amount_tipped DESC
    )
FROM
    bookings;