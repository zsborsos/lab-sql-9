-- Lab | SQL Queries 9
-- Zsanett Borsos

-- Create a table rentals_may to store the data from rental table with information for the month of May.

CREATE TABLE IF NOT EXISTS sakila.rentals_may LIKE sakila.rental;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO sakila.rentals_may(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update
FROM sakila.rental
WHERE rental_date BETWEEN date('2005-05-01') AND date('2005-05-30');

-- Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE IF NOT EXISTS sakila.rentals_june LIKE sakila.rental;

-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO sakila.rentals_june(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update
FROM sakila.rental
WHERE rental_date BETWEEN date('2005-06-01') AND date('2005-06-30');

-- Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(inventory_id) FROM sakila.rentals_may
GROUP BY customer_id;

-- Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(inventory_id) FROM sakila.rentals_june
GROUP BY customer_id;

-- The rest will be in a Jupyter Notebook.