SELECT
	order_date AS ACTION_DATE,
	(SELECT
		name
	FROM
		person
	WHERE
		person.id = person_order.person_id) AS PERSON_NAME
FROM
	person_order

INTERSECT

SELECT
	visit_date,
	(SELECT
		name
	FROM
		person
	WHERE
		person.id = person_visits.person_id) AS PERSON_NAME
FROM
	person_visits
ORDER BY
	ACTION_DATE,
	PERSON_NAME DESC