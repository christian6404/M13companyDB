-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE category (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name TEXT NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    price DEC NOT NULL,
    category_id INT,
    FOREIGN KEY(category_id)
    REFERENCES category(id)
);

CREATE TABLE tag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name TEXT
);

CREATE TABLE productTag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    tag_id INT,
    FOREIGN KEY(product_id)
    REFERENCES product(id),

    FOREIGN KEY(tag_id)
    REFERENCES tag(id)
);