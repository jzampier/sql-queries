SELECT
    amount_billed,
    CASE
        -- !Keep eye on conditional order
        WHEN amount_billed > 30 THEN 'Good day'
        WHEN amount_billed > 10 THEN 'Normal day'
        ELSE 'Bad day'
    END
FROM
    orders;

SELECT
    EXTRACT(
        DOW
        FROM
            last_checkin
    )
FROM
    memberships;