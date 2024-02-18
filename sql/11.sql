/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
 SELECT film_id, title, count(film_id) FROM inventory join film using (film_id) GROUP BY film_id, title HAVING SUBSTRING(title, 1, 1) = 'H' ORDER
BY title DESC;
