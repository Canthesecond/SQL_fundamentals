/*"Select all books NOT published in 2017"*/
SELECT * FROM books
WHERE released_year<>2017;

/*Select books with titles that don't start with 'W'*/
SELECT * FROM books WHERE title NOT LIKE'W%';

/*Select books released after the year 2000*/
SELECT * FROM books WHERE released_year>2000;

/*SELECT books written by Dave Eggers, published after the year 2010*/
SELECT * FROM books WHERE author_fname='Dave' && author_lname='Eggers' && released_year>2010;

/*Select all books written by... Carver, Lahiri, Smith*/
SELECT * FROM books WHERE author_fname IN('Carver', 'Lahiri', 'Smith');

/*I only want books released after 2000 and year is even number*/
SELECT * FROM books WHERE released_year > 2000 AND released_year % 2 = 0;

/*
0 - 50 	 : 1 star
51 - 100 : 2 stars
> 100	 : 3 stars
+-----------------------------------------------------+----------------+-------+
| title                                               | stock_quantity | STOCK |
+-----------------------------------------------------+----------------+-------+
| The Namesake                                        |             32 | *     |
| Norse Mythology                                     |             43 | *     |
| American Gods                                       |             12 | *     |
| Interpreter of Maladies                             |             97 | **    |
| A Hologram for the King: A Novel                    |            154 | ***   |
| The Circle                                          |             26 | *     |
| The Amazing Adventures of Kavalier & Clay           |             68 | **    |
| Just Kids                                           |             55 | **    |
| A Heartbreaking Work of Staggering Genius           |            104 | ***   |
| Coraline                                            |            100 | **    |
| What We Talk About When We Talk About Love: Stories |             23 | *     |
| Where I'm Calling From: Selected Stories            |             12 | *     |
| White Noise                                         |             49 | *     |
| Cannery Row                                         |             95 | **    |
| Oblivion: Stories                                   |            172 | ***   |
| Consider the Lobster                                |             92 | **    |
| 10% Happier                                         |             29 | *     |
| fake_book                                           |            287 | ***   |
| Lincoln In The Bardo                                |           1000 | ***   |
+-----------------------------------------------------+----------------+-------+
*/

SELECT title, stock_quantity, 
	CASE
		WHEN stock_quantity > 100 THEN '***'
		WHEN stock_quantity >= 50 AND stock_quantity <= 100 THEN '**'
		ELSE '*'
	END AS STOCK
FROM books;

-- OR --

SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;   

-- OR --
SELECT title, stock_quantity,
    CASE 
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM books;   



/*Select all books where author_lname  starts with a 'C' or an 'S''*/
SELECT * FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- OR
/*Select all books where author_lname  starts with a 'C' or an 'S''*/
SELECT * FROM books
WHERE SUBSTR(author_lname,1,1) IN ('C','S');


