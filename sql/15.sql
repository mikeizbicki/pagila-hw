/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

/*SELECT category.name, COUNT(film.title) AS test_2 FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film ON film_category.film_id=film.film_id
JOIN language ON film.language_id = language.language_id
WHERE language.name = 'English' GROUP BY category.name;*/

SELECT * FROM film;
