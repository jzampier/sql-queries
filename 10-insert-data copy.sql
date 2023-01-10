-- Active: 1673067291495@@127.0.0.1@3306@talently
INSERT INTO employers (company_name, company_adress, yearly_revenue, is_hiring)
VALUES
('PETROBRAS', 'Elias Agostinho 665 Rio de Janeiro', 200, true),
('Salumba Inc', 'Jewellers St 1000, Dalaran', 120, FALSE),
('CFM Ltda', 'Rua dos Karioka 2049, Giz de Fora', 123, FALSE),
('Power of Minas Inc', 'Center of the World 2022, Belzonte', 543, true);

INSERT INTO conversation (user_name, employer_name, message) VALUES
('Pedro Sampaio', 'PETROBRAS', 'Tem vaga ai ? Gibe mony plox! Hueueueue'),
('Roberval Chocolate Stealer', 'Power of Minas Inc', 'Aceita Jadson?'),
('Pedro Sampaio', 'CFM Ltda', 'Text Text Text Text Text Text'),
('Roberval Chocolate Stealer', 'Salumba Inc', 'Text2 Text2 Text2 Text2 Text2 Text2 Text2 ');
