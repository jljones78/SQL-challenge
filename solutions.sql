-- SHOW DATABASES;
USE sakila;
SHOW TABLES;

/*
-- 1a
SELECT first_name, last_name 
FROM actor 
GROUP BY last_name, first_name;

-- 1b
SELECT CONCAT(first_name,' ',last_name) AS 'actor_name' 
FROM actor 
GROUP BY CONCAT(first_name,' ',last_name);

-- 2a
SELECT actor_id, first_name, last_name 
FROM actor 
WHERE first_name = 'JOE'
GROUP BY actor_id, last_name, first_name;

-- 2b
SELECT first_name, last_name 
FROM actor 
WHERE last_name LIKE ('%GEN%')
GROUP BY last_name, first_name;

-- 2c
SELECT first_name, last_name 
FROM actor 
WHERE last_name LIKE ('%LI%')
GROUP BY last_name, first_name
ORDER BY last_name, first_name;

-- 2d
SELECT country_id, country
FROM country
WHERE country IN ('Afghanistan','Bangladesh','China')

-- 3a
ALTER TABLE actor ADD description BLOB;

-- 3b
ALTER TABLE actor DROP COLUMN description;

-- 4a
SELECT last_name, COUNT(actor_id) AS 'count'
FROM actor
GROUP BY last_name;

-- 4b
SELECT last_name, COUNT(actor_id) AS 'count'
FROM actor
GROUP BY last_name
HAVING COUNT(actor_id) > 1;

-- 4c
UPDATE actor SET first_name = 'HARPO'
WHERE (first_name = 'GROUCHO' and last_name = 'WILLIAMS');

-- 4d
UPDATE actor SET first_name = 'GROUCHO'
WHERE (first_name = 'HARPO' and last_name = 'WILLIAMS');

-- 5a
SHOW CREATE TABLE address;

-- 6a
SELECT s.first_name, s.last_name, a.address
FROM staff s
JOIN address a on s.address_id = a.address_id;

-- 6b
SELECT s.first_name, s.last_name, sum(p.amount) AS 'total_ring'
FROM payment p
JOIN staff s ON p.staff_id = s.staff_id
WHERE p.payment_date BETWEEN '2005-08-01' AND '2005-09-01'
GROUP BY s.first_name, s.last_name;

-- 6c
SELECT f.title AS 'film', count(DISTINCT fa.actor_id) AS 'actor_count'
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY f.title;

-- 6d
SELECT f.title AS 'title', count(i.inventory_id) AS 'copies'
FROM inventory i
JOIN film f ON i.film_id = f.film_id
WHERE title = 'Hunchback Impossible';

-- 6e
SELECT c.first_name, c.last_name, sum(p.amount) AS 'total_payment'
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY c.last_name, c.first_name;

-- 7a
SELECT f.title
FROM film f 
WHERE (f.title LIKE ('K%') OR f.title LIKE ('Q%'));

-- 7b
SELECT a.first_name, a.last_name
FROM actor_info a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'ALONE TRIP';

-- 7c 
SELECT cl.name, c.email 
FROM customer_list cl
JOIN customer c ON cl.ID = c.customer_id
WHERE cl.country = 'Canada'

-- 7d
SELECT f.title
FROM film f
JOIN film_category fc ON  f.film_id = fc.film_id
JOIN category c on fc.category_id = c.category_id
WHERE c.name = 'Family';
*/

/*
-- 7h
SELECT 
c.name AS 'category_name'
,sum(p.amount) AS 'total_revenue'

FROM category c
LEFT JOIN film_category f on c.category_id = f.category_id
LEFT JOIN inventory i on f.film_id = i.film_id
LEFT JOIN rental r on i.inventory_id = r.inventory_id
LEFT JOIN payment p on r.rental_id = p.rental_id
GROUP BY c.name
ORDER BY sum(p.amount) desc
LIMIT 5;
*/