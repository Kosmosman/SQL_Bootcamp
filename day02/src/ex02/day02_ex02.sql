SELECT
	CASE 
		WHEN person.name IS NULL THEN '-'
		ELSE person.name
	END AS PERSON_NAME,
	visit_date,
	CASE
		WHEN pizzeria.name IS NULL THEN '-'
		ELSE pizzeria.name
	END AS PIZZERIA_NAME
FROM
	person
FULL JOIN (SELECT 
		       * 
		   FROM
		       person_visits 
		   WHERE
		       visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS PERSON_VISITS
	ON person_id = person.id
FULL JOIN pizzeria
	ON pizzeria_id = pizzeria.id
ORDER BY
	PERSON_NAME,
	visit_date,
	PIZZERIA_NAME