-- Active: 1673125002031@@127.0.0.1@5432@sales_example@public
CREATE DATABASE sales_example;
-- !Postgres
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    date_created DATE DEFAULT CURRENT_DATE,
    date_fulfilled DATE,
    customer_name VARCHAR(300) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volume NUMERIC(10,3) NOT NULL CHECK (volume >=0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);


-- ?MySQL
CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_created DATE DEFAULT (CURRENT_DATE),
    date_fulfilled DATE,
    customer_name VARCHAR(300) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volume NUMERIC(10,3) NOT NULL CHECK (volume >=0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
);