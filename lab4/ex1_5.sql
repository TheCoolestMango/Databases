SELECT first_name, COUNT(*)
FROM customer
GROUP BY first_name
HAVING COUNT(*) > 1