SHOW DATABASES;

USE mydb;

SHOW TABLES;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE variant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    products_id INT,
    size VARCHAR(2) NOT NULL,
    price INT NOT NULL DEFAULT 30
);

INSERT INTO products (name) VALUES ('青茶');

SELECT * FROM products;

INSERT INTO variant (products_id, size, price) VALUES (5, '大杯', 100);

SELECT * FROM variant;

SELECT *
FROM products
    INNER JOIN variant ON products.id = variant.products_id;

SELECT *
FROM products
    LEFT JOIN variant ON products.id = variant.products_id;

SELECT *
FROM products
    RIGHT JOIN variant ON products.id = variant.products_id;