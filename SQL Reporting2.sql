--Paging Through Results

---- SELECT * FROM <table> LIMIT <# of rows> OFFSET <skipped rows>;
SELECT * FROM orders LIMIT 50 OFFSET 100;

--the above query will give us 50 results but start at line 101 with the query

--the same query can be done by elminating the keyword 'OFFSET' as a shortcut but being
--more explicit is usually better when writing SQL statements
SELECT * FROM orders LIMIT 50, 100;

--Challenge 1 (2 questions)
/*In a library database there's a books table. There's a title, author, genre and first_published column.
The library database is connected to a website displaying 10 books at a time, sorted by the title alphabetically.
Write a query to bring back the second page of results. Please retrieve all columns of information.*/
SELECT * FROM books ORDER BY title LIMIT 10 OFFSET 10;

/*Imagine you're developing a Contacts application on a phone. You have a database with a phone_book table. It has the 
columns, first_name, last_name and phone. The phone has a technical limitation to show 20 contacts on a screen at a time. 
Write the SQL query to retrieve the 3rd page of results from the phone_book table. Contacts are ordered by last name and then first name.*/
SELECT * FROM phone_book ORDER BY last_name, first_name LIMIT 20 OFFSET 40;



