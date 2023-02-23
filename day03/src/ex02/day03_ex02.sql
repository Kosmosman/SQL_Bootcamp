WITH NO_NEED_MENU AS (
SELECT
	id AS MENU_ID
FROM
	menu
EXCEPT
SELECT
	person_order.menu_id
FROM
	person_order)

SELECT
	pizza_name,
	price,
	pizzeria.name
FROM
	(SELECT
	 	*
	 FROM
	 	menu
	 INNER JOIN NO_NEED_MENU
	 	ON NO_NEED_MENU.MENU_ID = menu.id) AS MENU_CHECK
FULL JOIN person_order
	ON person_order.menu_id = MENU_CHECK.id
FULL JOIN pizzeria
	ON MENU_CHECK.pizzeria_id = pizzeria.id
WHERE
	pizza_name IS NOT NULL
ORDER BY
	pizza_name,
	price