CREATE OR REPLACE FUNCTION fnc_persons(pgender varchar default 'female')
RETURNS TABLE (id bigint,
			   name varchar,
			   age bigint,
			   gender varchar,
			   address varchar) AS $$
	SELECT
		*
	FROM
		person
	WHERE
		gender = $1
$$ LANGUAGE sql;

SELECT
	*
FROM
	fnc_persons(pgender := 'male')
