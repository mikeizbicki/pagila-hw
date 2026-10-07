/*
 * For each payment, show the customer's total amount paid overall.
 *
 * HINT:
 * Use a window function with a PARTITION BY (but no ORDER BY).
 */
SELECT p.customer_id, c.first_name, c.last_name, p.payment_id, p.amount,
       sum(p.amount) OVER (PARTITION BY p.customer_id) AS customer_total
FROM payment p
JOIN customer c USING (customer_id)
ORDER BY p.customer_id, p.payment_id;
