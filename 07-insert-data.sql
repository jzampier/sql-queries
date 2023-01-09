-- Active: 1673067490537@@127.0.0.1@5432@talently
INSERT INTO employers (company_name, company_adress, yearly_revenue, is_hiring)
VALUES
('PETROBRAS', 'Elias Agostinho 665 Rio de Janeiro', 200, true),
('Salumba Inc', 'Jewellers St 1000, Dalaran', 120, false),
('CFM Ltda', 'Rua dos Karioka 2049, Giz de Fora', 123, true),
('Power of Minas Inc', 'Center of the World 2022, Belzonte', 543, true);

INSERT INTO conversation (user_name, employer_name, message, date_sent) VALUES
('Pedro Sampaio', 'PETROBRAS', 'Tem vaga ai ? Gibe mony plox! Hueueueue', '2023-01-08'),
('Roberval Chocolate Stealer', 'Power of Minas Inc', 'Aceita Jadson?', '2023-01-06'),
('Pedro Sampaio', 'CFM Ltda', 'Text Text Text Text Text Text', '2023-01-07'),
('Roberval Chocolate Stealer', 'Salumba Inc', 'Text2 Text2 Text2 Text2 Text2 Text2 Text2 ', '2023-01-02');
