/* data prep */
use mysql_bootcamp;
CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT * FROM people;

/*-----------------------------------*/
/*
Date time functions
CURDATE()	- gives current date
CURTIME()	- gives current time
NOW()		- gives current datetime
Date time format
DAY()
DAYNAME()
DAYOFWEEK()
DAY OF YEAR()
*/


SELECT BIRTHDATE,DATE_FORMAT(birthdate,'%m-%d-%y at %h-%m') AS 'Formatted' FROM people;

/*
# birthdate, after formatted
'2020-03-01', '03-01-20 at 12:03'*/

SELECT birthdate, DATEDIFF(NOW(),birthdate) AS 'Today vs birthday' FROM people;

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Richard', CURDATE(), CURTIME(), NOW());

SELECT DATE_FORMAT('2021-05-21 22:00:00','%W %M %Y') FROM people;

SELECT DATE_FORMAT(birthdate,'%d-%m-%y') FROM people;

SELECT * FROM people;
SELECT DATEDIFF('2021-11-02','1990-05-12');


SELECT birthdate, DATE_ADD(birthdate, INTERVAL 30 day) FROM people;

SELECT birthdate, birthdate + INTERVAL 30 day FROM people;

SELECT birthdate, birthdate - INTERVAL 20 day FROM people;


CREATE TABLE comments(
	comment VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    change_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comment 
VALUES('I like cats'),
		('today is pretty hot'),
	('I can\'t stop watching movies :)');


UPDATE comment
SET comment='I like cats and dogs'
WHERE comment='I like cats';


/*What's a good use case for CHAR?
It can be used for text which we know in advance that it will have fixed length.
Example: gender (M/F) for CHAR(1)
*/

CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

/*Print Out The Current Time*/
SELECT CURTIME();

/*Print Out The Current Date (but not time)*/
SELECT CURDATE();

/*Print Out The Current Day Of The Week (the number)*/
SELECT DAY(NOW());
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());

/*Print Out The Current Day Of The Week (The Day Name)*/
SELECT DAYNAME(NOW());

/*Print out the current day and time using this format:mm/dd/yyyy*/
SELECT DATE_FORMAT(NOW(),'%M-%D-%Y');

/*Print out the current day and time using this format:
January 2nd at 3:15 O*/
SELECT DATE_FORMAT(NOW(),'%M %D at %H:%m');

/*Create a tweets table that stores:
The Tweet content
A Username
Time it was created*/

CREATE TABLE tweety(
	tweet VARCHAR(140) NOT NULL,
    username VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW() 
);