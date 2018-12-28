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





