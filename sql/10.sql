/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT title, film_id, COUNT(actor_id) as actor_count FROM film_actor join film using (film_id) GROUP BY title, film_id ORDER BY COUNT(actor_id), title;
