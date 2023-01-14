-- Delete build 2 , team will be set to null
DELETE FROM
    building
WHERE
    id = 2;

-- Delete team 2, employees of the team will be set to default team 1
DELETE FROM
    team
WHERE
    id = 2;

-- Delete an employee (id=1) and it's removed from project_employee and intranet tables
DELETE FROM
    employee
WHERE
    id = 1;

-- *6.30