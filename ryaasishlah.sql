--1.pengujian query DML dasar

--test select
SELECT * FROM actor;

--test insert
INSERT INTO actor (first_name, last_name) VALUES ('Ryaas', 'Ishlah');

--test update
UPDATE actor SET first_name = 'Iyas' Where actor_id = 1;

--test delete
DELETE FROM actor WHERE actor_id = 202;

--2. manipulasi satu tabel

--test where
SELECT * FROM rental WHERE rental_date > '2005-05-01';

--test orderby
 SELECT * FROM rental ORDER BY rental_date DESC;

--test limit
SELECT * FROM rental ORDER BY rental_date DESC LIMIT 5;

--3. manipulasi dua atau lebih tabel

--test join
SELECT * FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id;

--test union
SELECT first_name, last_name FROM actor UNION SELECT first_name, last_name FROM customer;

--test intersect
SELECT first_name, last_name FROM actor INTERSECT SELECT first_name, last_name FROM customer;

--test except
SELECT first_name, last_name FROM actor EXCEPT SELECT first_name, last_name FROM customer;

--4. fungsi agregasi

--count
SELECT COUNT (*) FROM actor;

--sum
SELECT SUM(amount) FROM payment;

--avg
SELECT AVG(amount) FROM payment;

--max dan win
SELECT MAX(amount), MIN(amount) FROM payment;