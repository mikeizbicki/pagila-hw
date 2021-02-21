/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 *
 */

 SELECT film.title, film_actor.film_id, COUNT(film_actor.actor_id) as actor_count FROM film JOIN film_actor ON film.film_id = film_actor.film_id GROUP BY film.title, film_actor.film_id HAVING count(film_actor.actor_id) > 0 ORDER BY COUNT(film_actor.actor_id), film_actor.film_id, film.title;
