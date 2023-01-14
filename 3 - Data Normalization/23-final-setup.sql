-- Active: 1673067490537@@127.0.0.1@5432@relations
CREATE TABLE IF NOT EXISTS project (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    deadline DATE
);

CREATE TABLE IF NOT EXISTS building (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE IF NOT EXISTS team (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES building ON DELETE
    SET
        NULL
);

CREATE TABLE IF NOT EXISTS employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    --email VARCHAR(200) NOT NULL,
    --FOREIGN KEY (email) REFERENCES intranet_account ON DELETE
    email VARCHAR(200) NOT NULL UNIQUE,
    team_id INT DEFAULT 1 REFERENCES team ON DELETE
    SET
        DEFAULT
);

CREATE TABLE IF NOT EXISTS intranet_account (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200),
    PASSWORD VARCHAR(200) NOT NULL,
    FOREIGN KEY (email) REFERENCES employee (email) ON DELETE CASCADE
);

-- !Reference intermediate table
CREATE TABLE IF NOT EXISTS project_employee (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employee ON DELETE CASCADE,
    project_id INT REFERENCES project ON DELETE CASCADE
);