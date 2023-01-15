-- Active: 1673067490537@@127.0.0.1@5432@restaurants
CREATE TABLE payment_methods (
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    id SERIAL PRIMARY KEY,
    name VARCHAR(200)
);

CREATE TABLE TABLES (
    -- for mysql use this code
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    -- for postgresql use this code
    id SERIAL PRIMARY KEY,
    num_seats INT,
    category VARCHAR(200)
);