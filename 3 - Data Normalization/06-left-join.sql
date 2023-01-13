SELECT
    *
FROM
    -- left table
    addresses AS a
    LEFT JOIN users AS u ON a.id = u.address_id;

-- *6.14