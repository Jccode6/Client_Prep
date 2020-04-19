/**** Having Clause ****/
SELECT
	o.ship_country
	,COUNT(o.order_id) AS orders
FROM
	orders AS o
GROUP BY
	o.ship_country
HAVING
	COUNT(o.order_id) > 20
ORDER BY
	orders DESC
