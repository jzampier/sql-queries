-- Active: 1673124617232@@127.0.0.1@3306@talently
--! PostgreSQL database
ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;

--? MySQL
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'unemployed', 'self-employed') NOT NULL;