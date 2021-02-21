/*
 * Display the first and last name of each actor in a single column in upper case letters.
 * Name the column Actor Name, and sort the results alphabetically.
 */

SELECT first_name || ' ' || last_name AS "Actor Name" FROM actor ORDER BY first_name || ' ' || last_name;
