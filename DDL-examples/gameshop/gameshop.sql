CREATE TABLE customers(
	customer_id int NOT NULL AUTO_INCREMENT,
	customer_name varchar(100) NOT NULL,
	customer_age int(11) NOT NULL,
	PRIMARY KEY (customer_id)
);

CREATE TABLE products(
	product_id int NOT NULL AUTO_INCREMENT,
	product_name varchar(100) NOT NULL,
	PRIMARY KEY (product_id)
);

CREATE TABLE orders (
	order_id int NOT NULL AUTO_INCREMENT,
	customer_id int NOT NULL,
	product_id int NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id)
);

ALTER TABLE customers 
DROP COLUMN customer_age;

ALTER TABLE customers
ADD COLUMN customer_email varchar(60) NOT NULL,
ADD COLUMN house_number int NOT NULL,
ADD COLUMN postcode varchar(8) NOT NULL
;

ALTER TABLE products
DROP COLUMN product_name;

ALTER TABLE products
ADD COLUMN title varchar(60) NOT NULL,
ADD COLUMN price decimal(6,2) NOT NULL,
ADD COLUMN stock int NOT NULL
;

ALTER TABLE orders
DROP COlUMN date_placed,
ADD COLUMN date_placed varchar(60) NOT NULL;

INSERT INTO customers(customer_name, customer_email, house_number, postcode)
VALUES('Jeff', 'jeff@song.com', 13, 'X52 8ZQ'),
	  ('Kassie', 'kassie@gmail.com', 234, '98201'),
	  ('Mitch', 'mitch211@yahoo.com',555, '98230'),
	  ('Diego', 'diego71@aol.net', 211, '98555'),
	  ('Ally', 'allycat@hotmail.com', 567, '85747')
;

INSERT INTO products(title, price, stock)
VALUES('Sitar Hero', 42.99, 35),
	  ('An awesome game', 56.33, 12),
	  ('Another game', 77.00, 1),
	  ('Yet another', 66.55, 23),
	  ('And another', 80.33, 3)
;

INSERT INTO orders(customer_id, product_id, date_placed)
VALUES(1, 1, '2020-03-23'),
	  (2, 2, '2020-03-24'),
	  (3, 3, '2020-03-25'),
	  (4, 4, '2020-03-26'),
	  (5, 5, '2020-03-27')
;

SELECT * FROM customers;

SELECT customer_name, postcode
FROM customers;

SELECT * FROM customers WHERE customer_name='Ally';

SELECT customer_name, house_number FROM customers WHERE customer_id=4;