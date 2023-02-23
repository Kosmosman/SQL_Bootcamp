SELECT 
	(SELECT
	 	name
	FROM
		person
	WHERE
		person.id = PV.person_id) AS PERSON_NAME,
	(SELECT
		name
	FROM
		pizzeria
	WHERE
		pizzeria.id = PV.pizzeria_id) AS PIZZERIA_NAME
FROM
	(SELECT
		person_id,
		pizzeria_id
	FROM
	 	person_visits
	WHERE
	 	visit_date BETWEEN '2022-01-07' AND '2022-01-09'
	) AS PV
ORDER BY
	PERSON_NAME ASC,
	PIZZERIA_NAME DESC	