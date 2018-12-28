-- Practice the WHERE clause

--Equality operator is '='
--Inequality operator is '!='

SELECT first_name, last_name FROM users WHERE date_of_birth < '1998-12-01';
SELECT title AS "Book Title", author AS Author FROM books WHERE year_released <= 2015;
SELECT name, description FROM products WHERE price > 9.99;
SELECT title FROM movies WHERE release_year >= 2000;

--Filtering on multiple conditions

/*We're back in the sports team database. There's a results table with the columns id, home_team, home_score, 
away_team, away_score and played_on . Find all the matches in the results table where "Hessle" was playing away 
as the away team and their score was above 18 points.*/
SELECT * FROM results WHERE away_team = "Hessle" AND away_score > 18;

/*Now we're in the e-commerce database. In the users table we have the columns id, username, password, first_name 
and last_name. Find all users with either the last name "Hinkley" or "Pettit" */
SELECT * FROM users WHERE last_name = "Hinkley" OR last_name = "Pettit";

/*We're back in the sports team database. There's a results table with the columns id, home_team, home_score, away_team, 
away_score and played_on .
Find all the matches in the results table where "Hessle" was playing away as the away team and if they played on or 
after October 1st 2015. Date format is "YYYY-MM-DD".*/
SELECT * FROM results WHERE away_team = "Hessle" AND played_on >= "2015-10-01";

 --SEARCHING WITHIN A SET OF VALUES
/*We have an e-commerce database. Inside the products table we have the columns of id, name, description and price.
Without using the OR keyword, find all products with the price of 7.99, 9.99 or 11.99.*/
SELECT * FROM products WHERE price IN (7.99, 9.99, 11.99);

/*We have an e-commerce database. Inside the users table we have the columns of id, username, password, first_name and 
last_name. Without using the OR keyword, find all the users with the username of "2spooky4me" or "beard_man".*/
SELECT * FROM users WHERE username IN ("2spooky4me", "beard_man");

--SEARCHING WITHIN A RANGE OF VALUES
/* What are the books in the library from the 19th century?*/
SELECT title, author FROM books WHERE first_published >= 1800 AND first_published <= 1899;
 --The above could be accomplished more easily by using the BETWEEN keyword.
 SELECT title, author FROM books WHERE first_published BETWEEN 1800 AND 1899;

 /*In the e-commerce database we have the products table with the columns id, name, description and price.
Find all the products in the database with the price including and between 10.99 and 12.99.*/
SELECT * FROM products WHERE price BETWEEN 10.99 AND 12.99;

/*We're back in our sports team database with the results table. The columns are id, home_team, home_score, 
away_team, away_score and played_on.
There are 30 days in September. Find all the games played in the results table in September 2015.*/
SELECT * FROM results WHERE played_on BETWEEN "2015-09-01" AND "2015-09-30";

--FINDING DATA THAT MATCHES A PATTERN
--What are all Harry Potter books in the library?
SELECT * FROM books WHERE title LIKE "Harry Potter%";
SELECT title FROM books WHERE title LIKE "Harry Potter%"; 
--The above two queries are correct; one just returns the title and other returns all the info
--Use the wildcard operator '%' when you are uncertain of the beginning or ending of a value. Use the operator
--at the front if you're unsure what preceeds a title or at the end if you're unsure what follows the title.

/*In the e-commerce database we have a products table. The columns are id, name, description and price.
Find all the products where the pattern 't-shirt' can be found anywhere in the product name.*/
SELECT * FROM products WHERE name LIKE "%t-shirt%";

/*In the users table we have the columns id, username, password, first_name and last_name.
Find all users with the first name starting with the letter "L".*/
SELECT * FROM users WHERE first_name LIKE "L%";

--FILTERING OUT OR FINDING MISSING INFORMATION
SELECT * FROM loans WHERE returned_by > "2015-10-01" AND returned_on IS NULL;
/*We're back on the smartphone, but our phone_book is a mess. There's a phone_book table but there's missing 
information in a couple of the columns.
The phone_book has the following columns id, first_name, last_name and phone.
Find all contacts in the phone_book where the phone number is missing so we can go and ask them for their number.*/
SELECT * FROM phone_book WHERE phone IS NULL;

/*We're still using the phone_book, with the columns id, first_name, last_name and phone.
Imagine we're implementing the autocomplete feature for a search facility on the phone where a user can start 
typing a last name and suggestions will appear. Write a query to retrieve all values from the last name column where 
the last name value is present. Only retrieve the last_name column.*/
SELECT last_name FROM phone_book WHERE last_name IS NOT NULL;













