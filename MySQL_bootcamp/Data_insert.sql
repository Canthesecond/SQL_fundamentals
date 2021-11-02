/*
Define an Employees table, with the following fields:
id - number, mandatory, primary key
last_name - text, mandatory
first_name - text, mandatory
middle_name - text, not mandatory
age - number mandatory
current_status - text, mandatory, defaults to 'employed'
*/

CREATE TABLE Employees(
	id INT auto_increment NOT NULL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR (50),
    age INT NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
    
);

INSERT INTO Employees (first_name,last_name,age,current_status)
VALUES 
('John','Johnson',54,'CEO'),
('Josh','Richardson',35,'CFO')