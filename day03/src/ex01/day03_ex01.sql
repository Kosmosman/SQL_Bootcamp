SELECT
	id AS MENU_ID
FROM
	menu
EXCEPT
SELECT
	person_order.menu_id
FROM
	person_order
ORDER BY
	MENU_ID