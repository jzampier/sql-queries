-- Active: 1673067490537@@127.0.0.1@5432@restaurants
SELECT
    booking_date AS date,
    SUM(num_guests) AS n_guests
FROM
    bookings
GROUP BY
    date;

SELECT
    DISTINCT booking_date AS date,
    SUM(num_guests) AS n_guests
FROM
    bookings
GROUP BY
    date;

SELECT
    name,
    SUM(num_guests)
FROM
    payment_methods AS p
    INNER JOIN bookings AS b ON b.payment_id = p.id
GROUP BY
    name;

SELECT
    p.name,
    b.booking_date,
    SUM(num_guests) AS tot_guests,
    ROUND(AVG(b.amount_tipped), 2) AS avg_tip,
    ROUND(AVG(b.amount_billed), 2) AS avg_bill
FROM
    payment_methods AS p
    INNER JOIN bookings AS b ON b.payment_id = p.id
GROUP BY
    p.name,
    b.booking_date
ORDER BY
    b.booking_date;