WITH ONLY_MAN AS 
		(SELECT
		pizzeria.name
		FROM
			pizzeria
		INNER JOIN person_visits
			ON person_visits.pizzeria_id = pizzeria.id
		INNER JOIN person
			ON person.id = person_visits.person_id
		WHERE 
		 	gender = 'male'), 
	ONLY_WOMAN AS 
		(SELECT
			pizzeria.name
		FROM
			pizzeria
		INNER JOIN person_visits
			ON person_visits.pizzeria_id = pizzeria.id
		INNER JOIN person
			ON person.id = person_visits.person_id
		WHERE
		 	gender = 'female')

(SELECT
	name
FROM
	ONLY_MAN
EXCEPT ALL
SELECT
	name
FROM
	ONLY_WOMAN)

UNION ALL

(SELECT
	name
FROM
	ONLY_WOMAN
EXCEPT ALL
SELECT
	name
FROM
	ONLY_MAN)
ORDER BY
	name





