CREATE OR REPLACE VIEW V_SYMMETRIC_UNION AS
WITH TABLE_2_JAN AS(SELECT
						*
					FROM
						person_visits
					WHERE
						visit_date = '2022-01-02'),
	 TABLE_6_JAN AS(SELECT
						*
					FROM
						person_visits
					WHERE
						visit_date = '2022-01-06')
((SELECT
	person_id
FROM
	TABLE_2_JAN)
	
EXCEPT

(SELECT
	person_id
FROM
	TABLE_6_JAN))

UNION

((SELECT
	person_id
FROM
	TABLE_6_JAN)
	
EXCEPT

(SELECT
	person_id
FROM
	TABLE_2_JAN))

ORDER BY
	person_id