SELECT
	name
FROM
	(SELECT
		*
	FROM
		person
	INNER JOIN person_order
		ON person_order.person_id = person.id
	INNER JOIN menu
		ON person_order.menu_id = menu.id
	WHERE
		pizza_name = 'cheese pizza') AS CHEESE_CHOICE
INTERSECT SELECT name
FROM
	(SELECT
		*
	FROM
		person
	INNER JOIN person_order
		ON person_order.person_id = person.id
	INNER JOIN menu
		ON person_order.menu_id = menu.id
	WHERE
		pizza_name = 'pepperoni pizza') AS PEPPERONI_CHOICE
WHERE
	gender = 'female'
ORDER BY
	name