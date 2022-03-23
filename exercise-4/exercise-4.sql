-- the average film length by category
-- include the category name and avg length

SELECT
name,
AVG (length) AS avg
FROM 
category
RIGHT JOIN
film_category
ON
film_category.category_id = category.category_id
LEFT JOIN
film
ON
film_category.film_id = film.film_id
GROUP BY 
name