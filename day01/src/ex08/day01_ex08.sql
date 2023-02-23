SELECT
	order_date,
	CONCAT(name, ' (age:', age, ')') AS PESRONAL_INFORMATION
FROM
	person
NATURAL JOIN
	(SELECT
	 	person_id AS ID,
	 	order_date
	 FROM
	 	person_order
	) AS PERSON_ORDER
ORDER BY
	order_date,
	PESRONAL_INFORMATION