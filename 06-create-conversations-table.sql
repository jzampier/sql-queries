-- Active: 1673125002031@@127.0.0.1@5432@talently@public
CREATE TABLE conversation (
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);