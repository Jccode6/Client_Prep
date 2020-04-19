/**** Aggregate CASE on one row ****/

SELECT SUM("USA_Counts") AS USA, SUM("Brazil_Counts") AS Brazil
FROM
(SELECT
	CASE WHEN ship_country = 'USA' THEN COUNT(order_id) END AS "USA_Counts"
	,CASE WHEN ship_country = 'Brazil' THEN COUNT(order_id) END AS "Brazil_Counts"
FROM
	orders
WHERE
	ship_country IN ('USA', 'Brazil')
GROUP BY
	ship_country
 )c
