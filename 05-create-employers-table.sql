-- Active: 1673125002031@@127.0.0.1@5432@talently@public
CREATE TABLE IF NOT EXISTS employers (
    company_name VARCHAR(250),
    company_adress VARCHAR(300),
    yearly_revenue NUMERIC(5,2), -- Exact value
    is_hiring BOOLEAN
);