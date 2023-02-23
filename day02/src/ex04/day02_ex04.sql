SELECT
	pizza_name,
	name,
	price
FROM
	menu
INNER JOIN pizzeria
	ON pizzeria.id = menu.pizzeria_id AND (pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza')
ORDER BY
	pizza_name,
	name