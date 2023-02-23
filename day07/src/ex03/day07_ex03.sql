WITH ORDERS_AND_VISITS AS ((SELECT
								pizzeria.name AS name,
								'order' AS action_type
							FROM
								person_order
							INNER JOIN menu
								ON person_order.menu_id = menu.id
							INNER JOIN pizzeria
								ON pizzeria.id = menu.pizzeria_id)

							UNION ALL

							(SELECT
								pizzeria.name,
								'visit' AS action_type
							FROM
								person_visits
							INNER JOIN pizzeria
								ON pizzeria.id = person_visits.pizzeria_id))
		
SELECT
	name,
	COUNT(*) AS total_count
FROM
	ORDERS_AND_VISITS
GROUP BY
	name
ORDER BY
	total_count DESC,
	name