-- ROLLUP of amount made per year, month, day
-- use ROLLUP and EXTRACT YEAR, MONTH, DAY from payment_date

SELECT
SUM(amount),
EXTRACT(month FROM payment_date) AS m,
EXTRACT(day FROM payment_date) AS d,
EXTRACT(year FROM payment_date) AS y
FROM 
payment
GROUP BY 
ROLLUP (y, m, d)

