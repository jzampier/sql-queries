-- Active: 1673125002031@@127.0.0.1@5432@my_events
INSERT INTO
    event (
        name,
        date_planned,
        description,
        max_participants,
        min_age
    )
VALUES
    (
        'A first event',
        '2022-10-29 16:30',
        'Text description for event',
        20,
        18
    ),
    (
        'A second event',
        '2022-05-29 12:30',
        'Text description for the second event',
        10,
        22
    );

UPDATE
    event
SET
    min_age = 16,
    max_participants = 15
WHERE
    id = 2;

DELETE FROM
    event
WHERE
    id = 1;