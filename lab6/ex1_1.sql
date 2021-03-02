SELECT DISTINCT title,rating,category.name FROM film JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN inventory ON film.film_id = inventory.film_id 
JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE (rating = 'R' OR rating = 'PG-13')
AND (category.name = 'Horror' OR category.name = 'Sci-Fi')
