SELECT
	name
FROM
	person
INNER JOIN person_order
	ON person_order.person_id = person.id
INNER JOIN menu
	ON person_order.menu_id = menu.id
WHERE
	person.gender = 'male'
	AND (person.address = 'Moscow' OR person.address = 'Samara')
	AND (menu.pizza_name = 'pepperoni pizza' OR menu.pizza_name = 'cheese pizza')
ORDER BY
	name DESC