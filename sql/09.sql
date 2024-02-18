/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT staff.first_name, staff.last_name, sum(amount) from payment join staff using (staff_id) where payment_date >= '2020-01-01' and payment_date < '2020-02-01' group by staff.staff_id;
