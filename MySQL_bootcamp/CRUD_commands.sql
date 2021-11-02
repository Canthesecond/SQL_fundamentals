/*
Data preparation of dogs
*/

DROP TABLE dogs;

CREATE TABLE dogs(
	dog_id INT auto_increment NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    breed VARCHAR (50) NOT NULL,
    age INT NOT NULL
);

INSERT INTO dogs(name,breed,age)
VALUES  ('Olive','German Sephard',3 ),
		('Roti','Boxer',5 ),
        ('Misz','Husky',1 ),
        ('Daisy','Labrador',3 ),
		('Oldy','Rottweiler',6 )
        
        
#select_id,name,breed,columns
SELECT dog_id,name,breed,columns from dogs;

#German Shephards only
SELECT * dogs
WHERE breed='German Sephard'

#Name Change
UPDATE dogs SET name='Mr.T' 
WHERE name='Misz'

#Change Breed
UPDATE SET breed='Rottweiler'
WHERE breed='Husky'

#Delete 3 years old dogs
DELETE FROM dogs
WHERE age=3

#Delete all
DELETE FROM dogs




