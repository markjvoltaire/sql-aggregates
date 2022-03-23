-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10

SELECT
title,
COUNT (*)
FROM
 film
LEFT JOIN
inventory
ON
inventory.film_id = film.film_id
LEFT JOIN
rental
ON 
rental.inventory_id = inventory.inventory_id
GROUP BY
film.film_id
ORDER BY
count DESC
LIMIT
10;
