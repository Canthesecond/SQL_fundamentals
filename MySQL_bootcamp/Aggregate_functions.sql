/**COUNT how many books each author has written*/
SELECT CONCAT(author_fname,' ',author_lame) AS author,COUNT(title) FROM books
GROUP BY author
ORDER BY author;

/*books count by released years*/
SELECT released_year,COUNT(*) FROM books
GROUP BY released_year
ORDER BY released_year;

/*Find the longest book*/
SELECT MAX(pages) FROM books
ORDER BY pages DESC;

/*Find the year each author published their first book*/
SELECT author_fname,author_lname,MIN(released_year) FROM books
GROUP BY 1,2;

/*Find the longest page count for each author*/
SELECT author_fname,author_lname,MAX(pages) FROM books
GROUP BY 1,2;

/*Sum all pages in the entire database*/
SELECT SUM(pages) FROM books;

/*Sum all pages each author has written*/
SELECT author_fname,author_lname,SUM(pages) FROM books
GROUP BY 1,2;

/*Calculate the average released_year across all books*/
SELECT AVG(released_year) FROM books;

/*Calculate the average stock quantity for books released in the same year*/
SELECT released_year,AVG(stock_quantity) FROM books
GROUP BY 1
ORDER BY 1 DESC; 

/*Print the number of books in the database*/
SELECT COUNT(*) FROM books;

/*Print out how many books were released in each year*/
SELECT released_year,COUNT(*) FROM books
GROUP BY 1
ORDER BY 1 DESC;

/*Find the average released_year for each author*/
SELECT author_fname,author_lname, AVG(released_year) FROM books
GROUP BY 1,2;

/*Find the full name of the author who wrote the longest book*/
SELECT author_fname,author_lname, pages FROM books
ORDER BY 3 DESC LIMIT 1;

/*FInd the average page written each year_*/
SELECT released_year,AVG(pages) FROM books
GROUP BY released_year
ORDER BY 1 ASC;



