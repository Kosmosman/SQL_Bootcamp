SELECT
	order_date,
	CONCAT(name, ' (age:', age, ')') AS PESRONAL_INFORMATION
FROM
	person_order
JOIN person 
	ON person.id = person_order.person_id
ORDER BY
	order_date,
	PESRONAL_INFORMATION