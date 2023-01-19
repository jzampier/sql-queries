-- Active: 1673125002031@@127.0.0.1@5432@my_events
CREATE TABLE city (name VARCHAR(200) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS location (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300),
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(5) NOT NULL,
    city_name VARCHAR(200) REFERENCES city (name) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(300) NOT NULL
);

CREATE TABLE IF NOT EXISTS organizer (
    PASSWORD VARCHAR(500) NOT NULL,
    user_id INTEGER PRIMARY KEY REFERENCES users (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tag (name VARCHAR(100) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS event (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5),
    date_planned TIMESTAMP NOT NULL,
    image VARCHAR(2000),
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0),
    min_age INT CHECK (min_age > 0),
    location_id INTEGER REFERENCES location (id) ON DELETE CASCADE,
    organizer_id INTEGER REFERENCES organizer (user_id) ON DELETE CASCADE
);

-- *Intermediate table
CREATE TABLE IF NOT EXISTS event_user (
    event_id INTEGER REFERENCES event (id) ON DELETE CASCADE,
    user_id INTEGER REFERENCES users (id) ON DELETE CASCADE,
    PRIMARY KEY (event_id, user_id)
);

CREATE TABLE IF NOT EXISTS event_tag (
    event_id INTEGER REFERENCES event (id) ON DELETE CASCADE,
    tag_name VARCHAR(100) REFERENCES tag (name) ON DELETE CASCADE,
    PRIMARY KEY (event_id, tag_name)
);