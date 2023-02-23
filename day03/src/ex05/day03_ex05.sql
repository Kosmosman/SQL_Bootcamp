SELECT
	pizzeria.name AS PIZZERIA_NAME
FROM
	pizzeria
INNER JOIN person_visits
	ON	pizzeria.id = person_visits.pizzeria_id
INNER JOIN person
	ON person.id = person_visits.person_id
WHERE
	person.name = 'Andrey'
	
EXCEPT

SELECT
	pizzeria.name
FROM
	pizzeria
INNER JOIN menu
	ON pizzeria.id = menu.pizzeria_id
INNER JOIN person_order
	ON menu.id = person_order.menu_id
INNER JOIN person
	ON person.id = person_order.person_id
WHERE
	person.name = 'Andrey'