-- CUBE of amount made per year, month, day, and film rating
-- similar to exercise 9 but include the rating with joins
-- replace ROLLUP with CUBE


SELECT
SUM(amount),
rating,
EXTRACT(month FROM payment_date) AS m,
EXTRACT(day FROM payment_date) AS d,
EXTRACT(year FROM payment_date) AS y
FROM 
payment
INNER JOIN
rental
ON
rental.rental_id = payment.rental_id
INNER JOIN
inventory
ON
inventory.inventory_id = rental.inventory_id
INNER JOIN 
film
ON
film.film_id = inventory.film_id
GROUP BY 
CUBE (y, m, d, film.rating)
ORDER BY  film.rating, y, m, d

