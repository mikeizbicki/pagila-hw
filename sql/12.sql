/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

 SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(payment.amount) FROM customer JOIN payment ON customer.customer_id = payment.customer_id GROUP BY customer.customer_id, customer.first_name, customer.last_name ORDER BY customer.last_name;
