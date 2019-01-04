--Updating Rows
--Challenge 2 of Modifying Data (2 questions)

/* We have an eCommerce database and it has a products table. It has the columns id, name, description 
and price. The warehouse is closing down. There's a clearance sale and all products need to be priced 0.99.*/
UPDATE products SET price = .99;

/* Now we're using a database from a smartphone. It has a phone_book table. It has the columns id, first_name, 
last_name and phone.
Update all contacts to have the first name of "Mystery" and last name of "Person". */
UPDATE phone_book SET first_name = "Mystery", last_name = "Person";

--Practice Session on Updating Rows

-- Update the movie "The Ewok Adventure" to have the genre of "Sci Fi"
UPDATE movies SET genre = "Sci Fi" WHERE title IS "The Ewok Adventure";

-- Update the movie with "Starfighter" in the title to be from the year 1984
UPDATE movies SET year_released = 1984 WHERE title LIKE "%Starfighter%";

-- Update all reviews with a negative rating to be 0.
UPDATE reviews SET rating = "0" WHERE rating LIKE "%-%";

-- Update all review usernames to "Anonymous"
UPDATE reviews SET username = "Anonymous";
