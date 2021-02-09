SELECT first_name, last_name, city 
FROM customer
INNER JOIN address
ON customer.address_id=address.address_id
INNER JOIN city
ON address.city_id=city.city_id;