SHOW DATABASES;

USE mydb;

SHOW TABLES;

CREATE Table product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL DEFAULT 30
);

INSERT INTO product (id, name, price) VALUES (1, '拿鐵', 50);

INSERT INTO product (id, name, price) VALUES (2, '美式', 40);

INSERT INTO product (id, name, price) VALUES (3, '奶茶', 45);

INSERT INTO product (name, price) VALUES ('綠茶', 30);

INSERT INTO product (name, price) VALUES ('奶綠', 45);

INSERT INTO product (name) VALUES ('青茶');

SELECT * FROM product;

SELECT * FROM product WHERE price = 45;

SELECT * FROM product WHERE price < 40;

SELECT * FROM product WHERE price <> 50;

SELECT * FROM product WHERE price <> 50 and name = '美式';

SELECT * FROM product WHERE price = 30 or name = '奶茶';

SELECT * FROM product WHERE name = '青茶';

SELECT name, price FROM product WHERE price = 45;

SELECT id, name, price FROM product WHERE price = 45;

SET SQL_SAFE_UPDATES = 0;

UPDATE product SET price = 50 WHERE name = '奶茶';

UPDATE product SET name = '文山青茶', price = 25 WHERE id = 6;

UPDATE product SET price = 35 WHERE price <= 35;

UPDATE product SET price = 60;

DELETE FROM product WHERE name = '奶綠';

DELETE FROM product;

DROP TABLE product;