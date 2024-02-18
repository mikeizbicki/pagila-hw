/*
 * Count the total number of films whose rental price is less than $1.
 * HINT:
 * Use the count() aggregation function and the rental_rate column of the film table.
 */

SELECT count(rental_rate) FROM film WHERE rental_rate < 1;
