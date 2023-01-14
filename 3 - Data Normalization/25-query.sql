SELECT
    e.id AS employee_id,
    e.first_name,
    e.last_name,
    p.title,
    p.deadline
FROM
    employee AS e
    LEFT JOIN project_employee AS pe ON pe.employee_id = e.id
    LEFT JOIN project AS p ON pe.project_id = p.id
ORDER BY
    deadline,
    team_id,
    first_name;

-- !Project name where each employee is assigned
SELECT
    e.id AS employee_id,
    e.first_name,
    e.last_name,
    p.title,
    p.deadline
FROM
    employee AS e
    INNER JOIN project_employee AS pe ON pe.employee_id = e.id
    INNER JOIN project AS p ON pe.project_id = p.id
ORDER BY
    deadline,
    team_id,
    first_name;

-- !Team names for each employee
SELECT
    e.id AS employee_id,
    e.first_name,
    e.last_name,
    t.name
FROM
    employee AS e
    INNER JOIN team AS t ON e.team_id = t.id
WHERE
    t.id = 2;

-- !All employees that work on building number 3
SELECT
    e.id AS employee_id,
    e.first_name,
    e.last_name,
    b.name
FROM
    employee AS e
    INNER JOIN team AS t ON e.team_id = t.id
    INNER JOIN building AS b ON t.building_id = b.id
WHERE
    b.id = 3
ORDER BY
    e.birthdate;