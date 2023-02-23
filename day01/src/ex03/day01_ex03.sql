SELECT
	order_date AS ACTION_DATE,
	person_id AS PERSON_ID
FROM
	person_order

INTERSECT

SELECT
	visit_date,
	person_id
FROM
	person_visits
ORDER BY
	ACTION_DATE,
	PERSON_ID DESC