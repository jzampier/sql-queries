SELECT
    EXISTS(
        SELECT
            first_name,
            last_name
        FROM
            customers
        WHERE
            email = 'manu@test.com'
    );

SELECT
    o.id
FROM
    orders AS o
WHERE
    EXISTS(
        SELECT
            c.email
        FROM
            customers AS c
        WHERE
            o.customer_id = c.id
            AND c.email = 'max@test.com'
    );

--! Retrieve a list of email of custormers who placed orders
SELECT
    c.email
FROM
    customers AS c
    INNER JOIN orders AS o ON c.id = o.customer_id;

--! List ID of customers based on especific operator
SELECT
    id
FROM
    customers
WHERE
    first_name IN('Max', 'Manu');

SELECT
    id
FROM
    customers
WHERE
    first_name NOT IN('Max', 'Manu');

-- !Returns customers emails from customers who placed orders
SELECT
    email
FROM
    customers
WHERE
    id IN(
        SELECT
            customer_id
        FROM
            orders
    );