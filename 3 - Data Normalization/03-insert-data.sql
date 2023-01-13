-- Active: 1673124617232@@127.0.0.1@3306@relations
INSERT INTO
    cities (name)
VALUES
    ('Berlin'),
    ('New York'),
    ('London');

INSERT INTO
    addresses (street, house_number, city_id)
VALUES
    ('Teststreet', '8A', 3),
    ('Some street', '10', 1),
    ('Teststreet', '1', 3),
    ('My street', '101', 2);

INSERT INTO
    users (first_name, last_name, email, address_id)
VALUES
    ('Max', 'Schwarz', 'maxtest@gmail.com', 2),
    ('Manuel', 'Lorenz', 'mlorenz@yahoo.com', 4),
    ('Julie', 'Barnes', 'jb@uol.com', 3);