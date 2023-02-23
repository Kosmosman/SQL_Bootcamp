SELECT
	pizza_name,
	pizzeria.name
FROM
	person
INNER JOIN person_order
	ON person_id = person.id AND (person.name = 'Denis' OR person.name = 'Anna')
INNER JOIN menu
	ON menu.id = person_order.menu_id
INNER JOIN pizzeria
	ON pizzeria.id = menu.pizzeria_id
ORDER BY
	pizza_name,
	pizzeria.name