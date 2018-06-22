SELECT first_name, last_name, email, address

FROM customer

JOIN address ON customer.address_id = address.address_id

JOIN city ON address.city_id = city.city_id

WHERE city.city_id = 312;


SELECT  title, description, release_year, rating, special_features, category.name

FROM film

JOIN film_category ON film.film_id = film_category.film_id

JOIN category ON film_category.category_id= category.category_id

WHERE category.name= 'comedy';


SELECT actor.actor_id, actor.first_name, actor.last_name, film.title, film.description, film.release_year

FROM actor

JOIN film_actor ON actor.actor_id= film_actor.actor_id

JOIN film ON film_actor.film_id= film.film_id

WHERE actor.actor_id=5;


SELECT store.store_id, city.city_id, first_name, last_name, email, address.address

FROM customer

JOIN store ON customer.store_id= store.store_id
JOIN address ON customer.address_id= address.address_id

JOIN city ON address.city_id= city.city_id

WHERE store.store_id =1 and city.city_id IN (1, 42, 312, 459);

 
SELECT film.title AS film_title, film.description AS film_description, film.release_year, film.rating, film.special_features

FROM film

JOIN film_actor ON film.film_id = film_actor.film_id

WHERE film_actor.actor_id=5 and film.special_features LIKE "behind the scenes%";


SELECT film.film_id, film.title, actor.actor_id, CONCAT(actor.first_name," ", actor.last_name) AS actor_name

FROM film

JOIN film_actor ON film.film_id = film_actor.film_id

JOIN actor ON film_actor.actor_id = actor.actor_id

WHERE film.film_id=369;


SELECT  title AS film_title, description, release_year, rating, special_features, category.name AS genre, payment.amount AS rental_rate

FROM film

JOIN inventory ON film.film_id = inventory.film_id

JOIN film_category ON film.film_id = film_category.film_id

JOIN category ON film_category.category_id = category.category_id

JOIN rental ON inventory.inventory_id = rental.inventory_id

JOIN payment ON rental.rental_id = payment.rental_id

WHERE payment.amount = 2.99;


SELECT CONCAT(actor.first_name, " ", actor.last_name) AS actor_name
, title AS film_title, description, release_year, rating, special_features, category.name AS genre
FROM film

JOIN film_actor ON film.film_id = film_actor.film_id

JOIN actor ON film_actor.actor_id = actor.actor_id

JOIN film_category ON film.film_id = film_category.film_id

JOIN category ON film_category.category_id = category.category_id

WHERE CONCAT(actor.first_name, " ", actor.last_name) = "SANDRA KILMER";