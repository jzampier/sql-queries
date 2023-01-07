-- Active: 1673125002031@@127.0.0.1@5432@talently@public
--!PostgreSQL -> We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'unemployed', 'self-employed');
CREATE TABLE IF NOT EXISTS users(
    full_name VARCHAR(200),
    yearly_salary INTEGER,
    current_status employment_status
    --current_status ENUM('employed', 'unemployed', 'self-employed')
);