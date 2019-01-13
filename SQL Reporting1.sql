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


--PAGING THROUGH RESULTS

---- SELECT * FROM <table> LIMIT <# of rows> OFFSET <skipped rows>;
SELECT * FROM orders LIMIT 50 OFFSET 100;

--the above query will give us 50 results but start at line 101 with the query

--the same query can be done by elminating the keyword 'OFFSET' as a shortcut but being
--more explicit is usually better when writing SQL statements; if you eliminate the keyword OFFSET,
--you MUST also flip the numbers, so the below would return a limit of 50 results and skip 100 lines
SELECT * FROM orders LIMIT 100, 50;

--Challenge 1 (2 questions)
/*In a library database there's a books table. There's a title, author, genre and first_published column.
The library database is connected to a website displaying 10 books at a time, sorted by the title alphabetically.
Write a query to bring back the second page of results. Please retrieve all columns of information.*/
SELECT * FROM books ORDER BY title LIMIT 10 OFFSET 10;

/*Imagine you're developing a Contacts application on a phone. You have a database with a phone_book table. It has the 
columns, first_name, last_name and phone. The phone has a technical limitation to show 20 contacts on a screen at a time. 
Write the SQL query to retrieve the 3rd page of results from the phone_book table. Contacts are ordered by last name and then first name.*/
SELECT * FROM phone_book ORDER BY last_name, first_name LIMIT 20 OFFSET 40;

--Practice
-- Order movies with the most recent movies appearing at the top
SELECT * FROM movies ORDER BY year_released DESC;

-- Sort all reviews by username
SELECT * FROM reviews ORDER BY username;

-- Find top 3 highest rating reviews
SELECT * FROM reviews ORDER BY rating DESC LIMIT 3;

-- Obtain the actor records between the 701st and 720th records using only LIMIT and OFFSET
-- Due to actors being removed from the database the 701st row has the id of 702
SELECT * FROM actors LIMIT 19 OFFSET 700;







