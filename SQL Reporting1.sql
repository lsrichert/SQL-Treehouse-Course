SELECT * FROM customers ORDER BY last_name ASC, first_name ASC;

SELECT * FROM products ORDER BY stock_count;

--ASC or DESC (SQL defaults to ascending order which is ASC)

--Challenge 1 (3 questions)
/*Imagine you're a developer on a smartphone with an embedded database. There's a phone_book table with the fields, first_name, last_name and phone. Write the SQL query to order first by last_name and then by first_name in alphabetical order.
Select all columns.*/
SELECT * FROM phone_book ORDER BY last_name, first_name;

/*In a library database there's a books table. There's a title, author, genre and first_published column.
Order the books by the most recently published books at the top. Select all columns.*/
SELECT * FROM books ORDER BY first_published DESC;

/*We're still using the library database there's a books table. There's a title, author, genre and first_published column.
Order all books by Genre and then by Title. Select all columns.*/
SELECT * FROM books ORDER BY genre, title;

--LIMITING RESULTS
--Use the LIMIT keyword followed by the number of rows you want retrieved 
SELECT * FROM campaigns ORDER BY sales LIMIT 3;

--Challenge 2 (2 questions)
/*We're using the library database again. There's a books table. There's a title, author, genre and first_published column.
Write a query to obtain the first 5 books in the Fantasy genre ordered by the year released. Oldest first. Select all columns.*/
SELECT * FROM books WHERE genre IS "Fantasy" ORDER BY first_published LIMIT 5;

/*We're still using the library database with the books table. There's a title, author, genre and first_published column.
Find the earliest Science Fiction book in our library. Only one result should be returned. All columns should be selected.*/
SELECT * FROM books WHERE genre IS "Science Fiction" ORDER BY first_published ASC LIMIT 1;








