create database pord;
show databases;
use pord;
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    weight FLOAT
);
	INSERT INTO products (price, quantity, weight)
VALUES
(199.99, 10, 1.5),
(49.50, 25, 0.8),
(999.00, 5, 2.3),
(15.75, 100, 0.2);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    units_sold INT NOT NULL,
    total_amount DECIMAL(12,2) NOT NULL
);

INSERT INTO sales (product_id, units_sold, total_amount)
VALUES
(1, 3, 599.97),
(2, 10, 495.00),
(3, 2, 1998.00),
(4, 50, 787.50);

select * from products;
select * from sales;