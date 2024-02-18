/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
 SELECT customer_id, first_name, last_name, sum(amount) as sum FROM payment JOIN customer using (customer_id) GROUP BY customer_id, first_name, last_name ORDER BY last_name;
