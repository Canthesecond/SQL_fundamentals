/*add new books*/
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

/*DISTINCT Full Names*/
SELECT DISTINCT(CONCAT(author_fname,' ', author_lname)) FROM books;

/* Order By*/
SELECT author_lname FROM books 
ORDER BY 1 DESC;

SELECT author_fname, author_lname,title,released_year FROM books 
ORDER BY 4 DESC;

/* Limit 2 books by released years*/
SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 0,2;

/*Get the books authors' name starting with 'da'*/ 
SELECT * FROM books
WHERE author_fname LIKE '%da%';

/*Case Sensitive*/
SELECT * FROM books
WHERE author_fname LIKE BINARY '%Da%';

/*underscore limits the search by character*/
SELECT * FROM books
WHERE author_fname LIKE 'D___' ;


