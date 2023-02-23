SELECT
	id,
	name,
	(CASE WHEN age BETWEEN 10 AND 20 THEN 'interval #1'
		  WHEN age > 20 AND age < 24 THEN 'interval #2'
		  ELSE 'interval #3'
	END
	) AS INTERVAL_INFO
FROM
	person
ORDER BY
	INTERVAL_INFO;