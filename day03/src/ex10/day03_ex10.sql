INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT MAX(id)+1 FROM person_order),
	    (SELECT id FROM person WHERE name = 'Denis'),
		(SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
		'2022-02-24');

INSERT INTO person_order(id, person_id, menu_id, order_date)
VALUES ((SELECT MAX(id)+1 FROM person_order),
	    (SELECT id FROM person WHERE name = 'Irina'),
		(SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
		'2022-02-24');

SELECT
	*
FROM
	menu
INNER JOIN pizzeria
	ON pizzeria.id = menu.pizzeria_id
INNER JOIN person_order
	ON person_order.menu_id = menu.id
INNER JOIN person
	ON person_order.person_id = person.id