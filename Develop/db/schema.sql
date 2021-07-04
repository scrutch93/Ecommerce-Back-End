-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

DROP TABLE IF EXISTS Category;

CREATE TABLE Category (
	id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(80) NOT NULL,
    PRIMARY KEY (id)
    );

DROP TABLE IF EXISTS Product;

CREATE TABLE Product(
	id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(80),
    price DEC NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT REFERENCES Category(id),
    PRIMARY KEY (id)
    );
    
CREATE TABLE Tag(
	id INT NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(80),
    PRIMARY KEY (id)
    );
    
CREATE TABLE ProductTag(
	id INT NOT NULL AUTO_INCREMENT,
    product_id INT REFERENCES Product(id),
    tag_id INT REFERENCES  Tag(id),
    PRIMARY KEY (id)
    );
    
    
    