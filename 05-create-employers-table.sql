-- Active: 1673067291495@@127.0.0.1@3306@talently
CREATE TABLE IF NOT EXISTS employers (
    company_name VARCHAR(250),
    company_adress VARCHAR(300),
    yearly_revenue NUMERIC(5,2), -- Exact value
    is_hiring BOOLEAN DEFAULT FALSE
);