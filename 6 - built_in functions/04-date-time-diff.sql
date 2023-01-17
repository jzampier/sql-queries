-- Active: 1673067490537@@127.0.0.1@5432@gym
SELECT
    last_checkout - last_checkin AS interv
FROM
    memberships;

--! MySQL
SELECT
    TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
FROM
    memberships;

SELECT
    membership_end - membership_start AS membership_duration
FROM
    memberships;

SELECT
    NOW() - membership_start AS membership_duration
FROM
    memberships;