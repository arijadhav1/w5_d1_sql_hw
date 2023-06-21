-- Intro query, select all records from the actor table
SELECT *
FROM actor;

-- query for first_name and last_name from the actor table
SELECT first_name, last_name
FROM actor;

-- Query for a first_name that equals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for first_name that is LIKE Nick
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'Nick';

-- % wild card - can take the place of any character
SELECT first_name, actor_id 
FROM actor
WHERE first_name LIKE 'J%';

-- SELECT *
-- FROM companies
-- WHERE name LIKE 'McDonalds Corporation Co, Madison/Clinton'

-- Query for all first_name data that starts with the letter K and is followed by 2 characters using the WHERE clause __
SELECT first_name, actor_id
FROM actor
WHERE first_name
LIKE 'K__';

-- Query for all first_name data that starts with a K and ends with a th using the WHERE clause with both wildcard and underscore
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name
LIKE 'K_%th';

-- Comparison Operators
-- Greater than > Less than <
-- Greater or Equal >= Less Than or Equal <=
-- Not Equal <>

-- Explore data from payment table with SELECT ALL query *
-- Good idea to grab all data from a new table so you know what you're working with
SELECT *
FROM payment;

-- Query for data that shows cumstomers who paid an amount greater than $3
SELECT customer_id, amount
FROM payment
WHERE amount > 3.00;

-- Query for customers who paid under 7.99 for specific rentals
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount < 7.99;

-- Query for payments that were greater than or equal to 5.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount >= 5.99;

-- Query for payment that were less than or equal 2.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount <= 2.99;

-- ORDER BY
-- BETWEEN
-- Query for all data order by amount
SELECT *
FROM payment
ORDER BY amount ASC; --Defaults to ascending

-- Order by descending
SELECT *
FROM payment
ORDER BY amount DESC;

-- Query for data that shows customers who paid an amount between 2.00 and 7.99 using WHERE, BETWEEN, and AND
Select customer_id, amount
FROM payment
WHERE amount BETWEEN 2.99 AND 5.99
ORDER BY amount;

-- Query for all customers who paid over 0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0
ORDER BY amount;

-- SQL Aggregations --> SUM(), AVG(), COUNT(), MIN(), MAX()

-- Query to display sum of amounts paid over 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Average amount for payments over 4.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the COUNT of amounts paid
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the DISTINCT COUNT of amounts paid <-- unique values
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query for smallest payment made over 7.99
SELECT MIN(amount) as min_num_payments
FROM payment
WHERE amount > 7.99;

SELECT amount
FROM payment
WHERE amount > 7.99
ORDER BY amount
LIMIT 5;

-- SELECT the largest amount greater than 7.99
SELECT MAX(amount) as max_num_payments
FROM payment
WHERE amount > 7.99;

SELECT amount
FROM payment
WHERE amount > 7.99
ORDER BY amount DESC
LIMIT 1;

SELECT amount
FROM payment
WHERE amount = 7.99;

-- Query to display different COUNTS of amounts grouped together
SELECT amount as testing, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

-- Query to display customer_ids with summed amounts for each customer_id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC; --ORDER BY SUM(amount)

-- Grab all amounts by customer id
SELECT customer_id, amount
FROM payment
GROUP BY customer_id, amount
ORDER BY customer_id, amount;

SELECT *
FROM address;


-- WEEK 5 Monday Questions

-- Question 1
SELECT COUNT(last_name)
FROM actor
WHERE last_name 
LIKE 'Wahlberg';
-- There are 2 actors with the last name 'Wahlberg'.

-- Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
-- There are 5607 payments made between 3.99 and 5.99

-- Question 3
SELECT film_id, COUNT(film_id) as des
FROM inventory
GROUP BY film_id
ORDER BY des DESC;
-- The store has the most in a lot of films.

-- Question 4
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';
-- There are 0 customers that have the last name "William"

-- Question 5
SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id
ORDER BY staff_id;
-- The store employee with staff_id 2 has more rentals sold with 7304.


-- Question 6
SELECT COUNT(DISTINCT district)
FROM address;
-- There are 378 different district names.

-- Question 7
SELECT COUNT(actor_id) as num_actors, film_id
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC;
-- The film with the most actors is film_id 508

-- Question 8
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' and store_id = 1;
-- There are 13 customers in store 1 with the last name ending in 'es'

-- Question 9
SELECT amount, count(amount) as counting
FROM payment
WHERE customer_id BETWEEN 380 and 430 
GROUP BY amount
ORDER BY counting DESC;
-- Based on the results given, there are only 3 amounts with a rental number of 250 or higher.

-- -- Question 10
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating;
-- -- There are 5 different ratings, with PG-13 having the highest count with 223.






















