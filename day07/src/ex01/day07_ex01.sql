SELECT
	name,
	COUNT(*) AS count_of_visits
FROM
	person_visits
INNER JOIN person
	ON person.id = person_id
GROUP BY
	name
ORDER BY
	count_of_visits DESC,
	name
LIMIT 4