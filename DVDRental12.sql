SELECT film_id
FROM film
ORDER BY film_id;

SELECT title, description, rating, last_update, film_id
FROM film
ORDER BY film_id;

SELECT *
FROM film
WHERE film_id< 4;

SELECT * 
FROM film
WHERE rating = 'PG' or rating = 'G';

SELECT * 
FROM actor
WHERE first_name
IN ('Angela', 'Angelina', 'Audrey');

SELECT * 
FROM actor
WHERE first_name
IN ('Julia');

SELECT * 
FROM actor
WHERE first_name
IN ('Chris', 'Cameron', 'Cuba');

SELECT * 
FROM customer
WHERE (first_name, last_name) = ('Jamie', 'Rice');

SELECT payment_id, amount, payment_date
FROM payment
WHERE amount < 1 
AND payment_date IS NOT NULL;

SELECT EXTRACT(DAY FROM return_date - rental_date) AS rental_period,
       COUNT(*) AS rentals_count
FROM rental
GROUP BY rental_period
ORDER BY rental_period;

SELECT *
FROM city
ORDER BY country_id;

SELECT customer_id
FROM rental
WHERE return_date IS NOT NULL
ORDER BY return_date DESC
LIMIT 3;

SELECT rating, COUNT (rating)
FROM film
WHERE rating = 'PG' OR rating = 'PG-13'
OR rating = 'NC-17'
GROUP BY rating;

SELECT COUNT(DISTINCT customer_id) AS num_clientes
FROM rental;

SELECT last_name, COUNT(*) AS cantidad
FROM customer
GROUP BY last_name
HAVING COUNT(*) > 1;


SELECT fa.film_id, f.title, COUNT(fa.actor_id) AS cantidad_actores
FROM film_actor fa
JOIN film f ON fa.film_id = f.film_id
GROUP BY fa.film_id, f.title
ORDER BY cantidad_actores DESC
LIMIT 1;

SELECT AC.actor_id, AC.first_name, AC.last_name, COUNT(F.film_id) AS film_count
FROM film AS F
INNER JOIN film_actor AS FA ON F.film_id = FA.film_id
INNER JOIN actor AS AC ON AC.actor_id = FA.actor_id
GROUP BY AC.actor_id, AC.first_name, AC.last_name
ORDER BY film_count DESC
LIMIT 1;

SELECT country_id, COUNT(*) AS num_ciudades
FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC;

SELECT ROUND(AVG(rental_rate), 2) AS tarifa_promedio
FROM film;

SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM actor
ORDER BY LENGTH(CONCAT(first_name, ' ', last_name)) DESC
LIMIT 10;






