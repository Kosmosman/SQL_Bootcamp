INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT MAX(id) + 1 FROM person_visits),
     	(SELECT id FROM person WHERE name = 'Dmitriy'),
  		(SELECT pizzeria.id FROM pizzeria INNER JOIN menu ON price < 800 AND pizzeria.id= menu.pizzeria_id LIMIT 1),
		'2022-01-08');
REFRESH MATERIALIZED VIEW MV_DMITRIY_VISITS_AND_EAT;

SELECT
	*
FROM
	MV_DMITRIY_VISITS_AND_EAT