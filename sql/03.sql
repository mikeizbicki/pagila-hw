/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */

 SELECT last_name FROM actor WHERE UPPER(last_name) LIKE '%LI%' ORDER BY last_name;
