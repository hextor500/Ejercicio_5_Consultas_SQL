/*1 Consulta*/
SELECT film_id, title FROM film;
/*2 Consulta*/
SELECT * FROM film LIMIT 5;
/*3 Consulta*/
SELECT * FROM film WHERE film_id < 4;
/*4 Consulta*/
SELECT * FROM film WHERE rating IN ('PG', 'G');
/*5 Consulta*/
SELECT first_name, last_name FROM actor WHERE first_name IN ('Angela','Angelina','Audrey');
/*6 Consulta*/
SELECT first_name, last_name FROM actor WHERE first_name = 'Julia';
/*7 Consulta*/
SELECT first_name, last_name FROM actor WHERE first_name IN ('Chris','Cameron','Cuba');
/*8 Consulta*/
SELECT * FROM customer WHERE first_name = 'Jamie' AND last_name = 'Rice';
/*9 Consulta*/
SELECT amount, payment_date FROM payment WHERE amount < 1;
/*10 Consulta*/
SELECT rental_duration FROM film GROUP BY (rental_duration);
/*11 Consulta*/
SELECT country_id, city FROM CITY ORDER BY country_id, city;
/*12 Consulta*/
SELECT customer_id, return_date FROM rental WHERE return_date IS NOT NULL ORDER BY return_date DESC LIMIT 3;
/*13 Consulta*/
SELECT rating, COUNT(rating) FROM film WHERE rating IN ('PG','PG-13','NC-17') GROUP BY rating;
/*14 Consulta*/
SELECT COUNT(DISTINCT (customer_id)) FROM rental; 
/*15 Consulta*/ 
SELECT COUNT(last_name), last_name FROM customer GROUP BY last_name HAVING COUNT(last_name) > 1;
/*16 Consulta*/
SELECT COUNT(actor_id), film_id FROM film_actor GROUP BY film_id ORDER BY count(actor_id) DESC;
/*17 Consulta*/
SELECT COUNT(film_id), actor_id FROM film_actor GROUP BY actor_id ORDER BY count(film_id) DESC;
/*18 Consulta*/
SELECT COUNT(city), city.country_id, country.country FROM city INNER JOIN country ON city.country_id=country.country_id GROUP BY city.country_id, country.country_id ORDER BY count(*);
/*19 Consulta*/
SELECT ROUND(AVG(rental_rate),2) FROM film;
/*20 Consulta*/
SELECT first_name, last_name, SUM(char_length(first_name) + char_length(last_name)) AS Longitud_nonbre FROM actor GROUP BY actor_id ORDER BY SUM(char_length(first_name) + char_length(last_name)) DESC LIMIT 10;





