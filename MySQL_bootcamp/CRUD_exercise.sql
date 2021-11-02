
/*
Shirt table
*/
/*shirt_id	article			color	shirt_size	last_worn
---------------------------------------------------------
1			t-shirt			white	S			10
2			t-shirt			green	S			200
3			polo shirt		black	M			10
4			tank top		blue	S			50
5			t-shirt			pink	S			0
6			polo shirt		red		M			5
7			tank top		white	S			200
8			tank top		blue	M			15
*/
CREATE TABLE shirt(
	shirt_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    article VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
    shirt_size VARCHAR(1) NOT NULL,
    last_worn INT NOT NULL
    );
    
INSERT INTO shirt(article,color,shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);


/*ADD a new shirt*/
INSERT INTO shirt(article,color,shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 300);

/*All medium shirts*/
SELECT * FROM shirt
WHERE short_size='M';

/*Update all polo shirts change their size to L*/
UPDATE shirt SET shirt_size='L'
WHERE article='polo shirt';

/*Update the shirt last worn 15 days ago change last_worn to 0*/
UPDATE shirt SET last_worn=0
WHERE last_worn=15

/*alter table of shirtsize*/
ALTER TABLE shirt
MODIFY COLUMN shirt_size VARCHAR(2);

/*Delete all old shirts Last worn 200 days ago*/
DELETE FROM shirt 
WHERE last_worn>=200;






