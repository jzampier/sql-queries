-- Active: 1673125002031@@127.0.0.1@5432@online_shop
CREATE DATABASE online_shop;

DROP TABLE product;

CREATE TABLE product (
    product_name VARCHAR(300) NOT NULL,
    price NUMERIC (10,2) CHECK (price > 0),
    description TEXT,
    amount_in_stock INT NOT NULL,
    image_url VARCHAR(2000)
);

ALTER TABLE product
ADD COLUMN
id SERIAL PRIMARY KEY;

INSERT INTO product (product_name, price, description, amount_in_stock, image_url) VALUES
('Tenis dedinho', 240.99, 'Tenis com 5 dedinhos da aligria', 50, 'http://www.fjsjfsjflsl.fscdii/image1'),
('Buneco do Aheciu Nevis', 150.99, 'Buneco do Xheradhor', 10, 'http://www.fjsjfsjflsl.fscdii/image2'),
('Peh di Galu s/ espora', 325.49, 'Para fazer tatuagens asyncronas', 80, 'http://www.fjsjfsjflsl.fscdii/image3');

ALTER TABLE product
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0);