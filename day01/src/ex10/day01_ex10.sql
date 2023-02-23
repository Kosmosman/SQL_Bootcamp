SELECT
	person.name AS PESRON_NAME,
	menu.pizza_name AS PIZZA_NAME,
	pizzeria.name AS PIZZERIA_NAME
FROM
	person_order
INNER JOIN person
	ON person.id = person_order.person_id
INNER JOIN menu
	ON menu.id = person_order.menu_id
INNER JOIN pizzeria
	ON pizzeria.id = menu.pizzeria_id
ORDER BY
	PESRON_NAME,
	PIZZA_NAME,
	PIZZERIA_NAME