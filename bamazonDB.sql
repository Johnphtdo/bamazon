DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
item_id INT AUTO_INCREMENT,
product_name VARCHAR(100),
department_name VARCHAR(100),
price DECIMAL(5,2),
stock_quantity INT (10),
PRIMARY KEY(item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES 
('Destiny 2', 'Video Games', 39.99, 20),
('Call of Duty: Modern Warfare', 'Video Games', 59.99, 0),
('Dog Food','Pet Supplies', 11.99, 20),
('Cat Food','Pet Supplies', 11.99, 10),
('Comb','Beauty & Health', 5.99, 15),
('Brush','Beauty & Health', 6.99, 10),
('Banana','AmazonFresh', 0.99, 15),
('Apple','AmazonFresh', 0.50, 20),
('Black Polo','Clothing', 11.99, 25),
('Black Dress','Clothing',13.99, 15);
SELECT * FROM products;