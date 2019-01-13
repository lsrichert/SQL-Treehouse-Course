--Next session in Reporting
--FUNCTIONS

--Adding Text Columns Together
--Sometimes the operator varies depending on which SQL you're using.

--- Concatenation Operator: ||

SELECT  first_name || " " || last_name AS "Full  Name", 
        email AS "Email", phone AS "Phone" 
          FROM customers ORDER BY last_name;

--As shown above, you can still use the ORDER BY keyword to sort by table names even if you've
--concatenated two columns.

/* Instruction
Single vs Double Quotes
In SQL there's a difference between using single quotes (') and double quotes ("). Single quotes 
should be used for String literals (e.g. 'lbs'), and double quotes should be used for identifiers 
like column aliases (e.g. "Max Weight"): */

SELECT maximum_weight || 'lbs' AS "Max Weight" FROM ELEVATOR_DATA;

/* Also, in this course, there's a few instances where we get this wrong and use double quotes with a 
String literal. Some versions of SQL will let you get away with that. So while you may be able to 
use them interchangeably here, just know that's not always the case. */

--Challenge 1 (2 questions)
/* In the library database there's a patrons table listing all the users of the library. The columns 
are id, first_name, last_name, address, email, library_id and zip_code.
Generate a list of strings that are in the following format: Andrew Chalkley <andrew@teamtreehouse.com>. 
Concatenate the first name, last name and email address for all users.
Alias it to to_field. This will be used in the "To" field in email marketing. */
SELECT first_name || " " || last_name || " " || "<" || email || ">" AS "to_field" FROM patrons;

/* In an ecommerce database there's a addresses table. There is an id, nickname, street, city, state, zip, 
country and user_id columns.
Concatenate the street, city, state, zip and country in the following format. Street, City, State Zip.
Country e.g. 34 NE 12 st, Portland, OR 97129. USA
Alias the concatenated string as address */
SELECT street || "," || " " || city || "," || " "|| state || " " || zip || "." || " " || country AS "address" FROM addresses;

--Finding Length with LENGTH()
SELECT username, LENGTH(username) AS length FROM customers ORDER BY length DESC LIMIT 1;
SELECT username AS length FROM customers WHERE LENGTH(username) IS < 7;

--Challenge 2 (1 question)
/* In the library database there's a books table with the columns id, title, author, genre and first_published.
Find the book with the longest title. Show the title and then the length. Alias the result of the length 
calculation to be longest_length. Only retrieve the longest book. */
SELECT title, LENGTH(title) AS longest_length FROM books ORDER BY longest_length DESC LIMIT 1;





