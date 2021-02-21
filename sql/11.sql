/*
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT inventory.film_id, film.title, COUNT(inventory.film_id) FROM inventory JOIN film ON inventory.film_id = film.film_id WHERE UPPER(film.title) LIKE 'H%' GROUP BY inventory.film_id, film.title ORDER BY film.title DESC;
