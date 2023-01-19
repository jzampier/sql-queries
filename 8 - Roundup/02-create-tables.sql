-- Active: 1673125002031@@127.0.0.1@5432@my_events
CREATE TABLE IF NOT EXISTS event (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5),
    date_planned TIMESTAMP NOT NULL,
    image VARCHAR(2000),
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0),
    min_age INT CHECK (min_age > 0)
);

DROP TABLE event_tag;

DROP TABLE event_user;

DROP TABLE event;

DROP TABLE tag;

DROP TABLE organizer;

DROP TABLE "user";

DROP TABLE location;

DROP TABLE city;