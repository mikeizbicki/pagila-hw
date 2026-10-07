/*
 * Rank actors by how many films they appear in (most films first). Ties share a rank.
 *
 * HINT:
 * Join actor with film_actor.
 * Then use a window function with an appropriate ORDER BY clause (no PARTITION BY).
 */
SELECT actor_id, first_name, last_name, count(*) AS films,
       rank() OVER (ORDER BY count(*) DESC) AS rnk
FROM actor JOIN film_actor USING (actor_id)
GROUP BY actor_id
ORDER BY rnk, actor_id;
