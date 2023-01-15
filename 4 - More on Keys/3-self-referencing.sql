-- Active: 1673067490537@@127.0.0.1@5432@relations
CREATE TABLE IF NOT EXISTS employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    supervisor_id INT REFERENCES employees (id) ON DELETE
    SET
        NULL
);