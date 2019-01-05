--Deleting Rows
--Challenge 3 (3 questions)

/*We have an eCommerce database and it has a products table. It has the columns id, name, description and price.
Delete all products priced at 11 or higher!*/
DELETE FROM products WHERE price >= 11;

/* The same eCommerce database has a users table. It has the columns id, username, password, first_name, and last_name.
Delete the user with the username of poley_hands.*/
DELETE FROM users WHERE username IS "poley_hands";

/* Now we're using a database from a smartphone. It has a phone_book table. It has the columns id, first_name, last_name and phone.
Delete all contacts with the first name of Jonathan and last name of Luna.*/
DELETE FROM phone_book WHERE first_name = "Jonathan" AND last_name = "Luna";



