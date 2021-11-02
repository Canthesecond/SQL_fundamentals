/*
Create a patisseria table 
It should include 4 columns: order_id, product_id, order_quantity, price
order_id is the primary key
Inspect tables and columns in the CLI(Call-Level-Interface)
Delete the table

*/

CREATE database mySQL_bootcamp;

USE mySQL_bootcamp; 

CREATE TABLE patisseria(
		order_id INT PRIMARY KEY NOT NULL,
        product_id INT,
        order_quantity INT DEFAULT 0,
        price INT NOT NULL
);

SHOW tables;

DESC patisseria;

DROP TABLE patisseria;

SHOW tables;