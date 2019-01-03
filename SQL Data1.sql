--Modifying Data Course
--Adding rows

--Challenge 1 (3 questions)
/*We have an eCommerce database and it has a products table. It has the columns id, name, description and price.
Add a new product to the products table. Use any valid values you want. All columns are required. The id column is auto incrementing.*/
INSERT INTO products VALUES (NULL, "Zelda", "video game", 19.99);

/*The same eCommerce database has a users table. It has the columns id, username, password, first_name, and last_name.
Add a new user to the users table. Use any valid values you want. All columns are required. The id column is auto incrementing.*/
INSERT INTO users VALUES (NULL, "rooney", "3456", "Rooney", "Richert");

/*Now we're using a database from a smartphone. It has a phone_book table. It has the columns id, first_name, last_name and phone.
Add a new contact to the phone_book table. Use any valid values you want. All columns are required. The id column is auto incrementing.*/
INSERT INTO phone_book VALUES (NULL, "Ellie", "Richert", 9991234567);


--Practice Session--
-- Insert the "Sci-Fi" movie "E.T. the Extra-Terrestrial" from 1982 into the movies table.
INSERT INTO movies VALUES (NULL,"E.T. the Extra-Terrestrial", 1982, "Sci-Fi");

-- Insert "Mark Hapka", "Jessica Rothe", "Eric Jungmann" and "Constance Wu" into the actors table.

INSERT INTO actors VALUES
(NULL, "Mark Hapka"),
(NULL, "Jessica Rothe"),
(NULL, "Constance Wu");

-- Enter a review for E.T. Use a username and review of your choosing.

INSERT INTO reviews (id, movie_id, username, review) VALUES (NULL, 11, "rooney", "great movie");


