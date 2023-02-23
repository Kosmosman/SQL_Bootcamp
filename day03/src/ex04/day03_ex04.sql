WITH ONLY_MAN AS 
		(SELECT
			pizzeria.name
		FROM
			person_order
		INNER JOIN person
			ON person.id = person_order.person_id
		INNER JOIN menu
			ON person_order.menu_id = menu.id
		INNER JOIN pizzeria
			ON menu.pizzeria_id = pizzeria.id
		WHERE 
		 	gender = 'male'), 
	ONLY_WOMAN AS 
		(SELECT
			pizzeria.name
		FROM
			person_order
		INNER JOIN person
			ON person.id = person_order.person_id
		INNER JOIN menu
			ON person_order.menu_id = menu.id
		INNER JOIN pizzeria
			ON menu.pizzeria_id = pizzeria.id
		WHERE 
		 	gender = 'female')

(SELECT
	name
FROM
	ONLY_MAN
EXCEPT
SELECT
	name
FROM
	ONLY_WOMAN)

UNION

(SELECT
	name
FROM
	ONLY_WOMAN
EXCEPT
SELECT
	name
FROM
	ONLY_MAN)
ORDER BY
	name