WITH PV_12 AS (SELECT
	     		   visit_date,
			   	   person_id
			   FROM
				   person_visits
			   WHERE
				   (visit_date BETWEEN '2022-01-01' AND '2022-01-10') 
				   AND (person_id = 1 OR person_id = 2))
SELECT
	VD::date AS MISSING_DATE
FROM
	generate_series('2022-01-01', '2022-01-10', interval '1 days') AS VD
LEFT JOIN PV_12
	ON VD::date = PV_12.visit_date
WHERE
	PV_12.person_id IS NULL
ORDER BY
	MISSING_DATE