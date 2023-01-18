-- Active: 1673125002031@@127.0.0.1@5432@gym
BEGIN;

INSERT INTO
    customers(first_name, last_name, email)
VALUES
    ('Joao', 'Predo', 'jpato@test.com');

-- *Creating a save point
SAVEPOINT save_1;

INSERT INTO
    orders(amount_billed, customer_id)
VALUES
    (103.12, 7);

-- *Confirm all changes in transaction
COMMIT;

-- *ROLLBACK (undo changes) command also closes the current transaction , also could be ROLLBACK to save_1
ROLLBACK TO save_1;