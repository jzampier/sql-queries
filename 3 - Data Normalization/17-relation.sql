-- Active: 1673067490537@@127.0.0.1@5432@relations

CREATE TABLE IF NOT EXISTS employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    --email VARCHAR(200) NOT NULL,
    --FOREIGN KEY (email) REFERENCES intranet_account ON DELETE
    email VARCHAR(200) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS intranet_account (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200),
    PASSWORD VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employee (email) ON DELETE CASCADE
);