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
)

INSERT INTO products (name) VALUES ('美式');

INSERT INTO products (name) VALUES ('拿鐵');

INSERT INTO products (name) VALUES ('奶茶');

SELECT * FROM products;

INSERT INTO variant (products_id, size, price) VALUES (1, '中杯', 40);

INSERT INTO variant (products_id, size, price) VALUES (1, '大杯', 50);

INSERT INTO variant (products_id, size, price) VALUES (2, '中杯', 50);

INSERT INTO variant (products_id, size, price) VALUES (2, '大杯', 60);

INSERT INTO variant (products_id, size, price) VALUES (3, '中杯', 45);

INSERT INTO variant (products_id, size, price) VALUES (3, '大杯', 55);

SELECT * FROM variant;

SELECT *
FROM products
    INNER JOIN variant ON products.id = variant.products_id

SELECT products.name, variant.size, variant.price
FROM products
    INNER JOIN variant ON products.id = variant.products_id