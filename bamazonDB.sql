DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
item_id INT AUTO_INCREMENT,
product_name VARCHAR(100),
department_name VARCHAR(100),
price DECIMAL(10,2),
stock_quantity INT (10),
PRIMARY KEY(item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES 
("Destiny 2", "Video Games", 39.99, 20),
("Call of Duty: Modern Warfare", "Video Games", 59.99, 50),
("Men's Black Polo - S","Men's Fashion", 11.99, 10),
("Men's Black Polo - M","Men's Fashion", 11.99, 20),
("Men's Black Polo - L","Men's Fashion", 11.99, 15),
("Men's Black Polo - XL","Men's Fashion", 11.99, 10),
("Women's Black Dress - XS","Women's Fashion",13.99, 15),
("Women's Black Dress - S","Women's Fashion",13.99, 20),
("Women's Black Dress - M","Women's Fashion",13.99, 25),
("Women's Black Dress - L","Women's Fashion",13.99, 15);
SELECT * FROM products;