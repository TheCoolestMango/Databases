SELECT first_name,last_name
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE amount > 11