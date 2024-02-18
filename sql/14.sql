/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
 SELECT title FROM film_category JOIN category USING (category_id) JOIN film USING (film_id) WHERE name = 'Family' ORDER BY title;
