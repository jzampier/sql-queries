-- Active: 1673124617232@@127.0.0.1@3306@talently
/* CREATE TABLE users (
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK (yearly_salary > 0 AND yearly_salary<100000),
    CHECK (yearly_salary < max_salary)
); */
--!PostgreSQL
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Roberval Chocolate Stealer';
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary >0);

--?MySQL Server
UPDATE users
SET yearly_salary = NULL
WHERE full_name = 'Roberval Chocolate Stealer';
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary >0);