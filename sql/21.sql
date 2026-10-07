/*
 * For each film, show the customer who most recently rented it.
 *
 * HINT:
 * Use the first_value function.
 * The window will include both PARTITION BY and ORDER BY
 */
SELECT DISTINCT
       f.title,
       first_value(c.customer_id)                             OVER w AS customer_id,
       first_value(c.first_name || ' ' || c.last_name)        OVER w AS customer_name
FROM film f
JOIN inventory i USING (film_id)
JOIN rental    r USING (inventory_id)
JOIN customer  c USING (customer_id)
WINDOW w AS (PARTITION BY f.film_id ORDER BY r.rental_date DESC)
ORDER BY f.title;

