INSERT INTO
    users (first_name)
VALUES
    ('Julio'),
    ('Malandrito'),
    ('Pedrito'),
    ('Elsio'),
    ('Celmar');

INSERT INTO
    users_friends (user_id, friend_id)
VALUES
    (1, 2),
    (1, 3),
    (3, 4),
--ERROR caused by check clause
    (5, 4);

-- *7.9