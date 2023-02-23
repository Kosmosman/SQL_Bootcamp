SELECT
	pizzeria.name
FROM (SELECT
	      *
	  FROM
	  	  person
	  WHERE
	 	  name = 'Dmitriy') AS PERSON
INNER JOIN person_visits
	ON PERSON.id = person_visits.person_id AND visit_date = '2022-01-08'
INNER JOIN pizzeria
	ON person_visits.pizzeria_id = pizzeria.id
INNER JOIN menu
	ON pizzeria.id = menu.pizzeria_id AND price < 800
	
	