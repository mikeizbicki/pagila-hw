/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name, COUNT(category.name) as sum FROM film_category JOIN category USING (category_id) JOIN film USING (film_id) JOIN language USING (language_id) WHERE language.name = 'English' GROUP BY category.name ORDER BY category.name;
