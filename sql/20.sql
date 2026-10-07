/*
 * For each film, show how many actors appear in it.
 *
 * HINT:
 * Join film and film_actor.
 * Use a window function that does NOT need an ORDER BY clause inside OVER.
 */
SELECT title,
       count(*) OVER (PARTITION BY film_id) AS actor_count
FROM film JOIN film_actor USING (film_id)
ORDER BY actor_count DESC, film_id;
