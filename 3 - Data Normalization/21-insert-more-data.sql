-- Active: 1673067490537@@127.0.0.1@5432@relations
INSERT INTO
    building (name)
VALUES
    ('Main Building'),
    ('Research Lab'),
    ('Darkroom');

INSERT INTO
    team (name, building_id)
VALUES
    ('Admin', 1),
    ('Data Analysts', 3),
    ('R&D', 2);

INSERT INTO
    employee (first_name, last_name, birthdate, email, team_id)
VALUES
    (
        'Julie',
        'Barnes',
        '1988-10-01',
        'julie@test.com',
        3
    ),
    (
        'Max',
        'Schwarz',
        '1989-06-10',
        'max@test.com',
        1
    ),
    (
        'Manuel',
        'Lorenz',
        '1987-01-29',
        'manu@test.com',
        2
    );

INSERT INTO
    intranet_account (email, PASSWORD)
VALUES
    ('max@test.com', 'abcae1'),
    ('manu@test.com', 'fdasfdas1'),
    ('julie@test.com', 'adsfsaf3');