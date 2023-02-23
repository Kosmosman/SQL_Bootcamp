CREATE OR REPLACE VIEW V_PRICE_WITH_DISCOUNT AS
	SELECT
		person.name,
		pizza_name,
		price,
		ROUND(price - price*0.1) AS DISCOUNT_PRICE
	FROM
		menu
	INNER JOIN person_order
		ON person_order.menu_id = menu.id
	INNER JOIN person
		ON person_order.person_id = person.id
	ORDER BY
		person.name,
		pizza_name;
SELECT
	*
FROM
	V_PRICE_WITH_DISCOUNT	