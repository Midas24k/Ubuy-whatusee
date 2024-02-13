-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE category(
    id INT AUTO_INCREMENT PRIMARY KEY,
    catagory_name VARCHAR(255) NOT NULL

);

CREATE TABLE product(
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL DEFUALT 10,
    catagory_id INT,
    FOREIGN KEY (catagory_id) REFRENCES category(catagory_id)
);
CREATE TABLE tag(
    INT AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(255) NOT NULL,
    tag_name VARCHAR(255),
);

CREATE producttag(
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    FOREIGN KEY (product_id) REFRENCES product(product_id)
    tag_id INT,
    FOREIGN KEY (tag_id) REFRENCES tag(tag_id)
);
