CREATE OR REPLACE VIEW V_PERSON_MALE AS
	SELECT
		*
	FROM
		person
	WHERE
		gender = 'male';

CREATE OR REPLACE VIEW V_PERSON_FEMALE AS
	SELECT
		*
	FROM
		person
	WHERE
		gender = 'female';
		
-- SELECT
-- 	*
-- FROM
-- 	V_PERSON_MALE;

-- SELECT
-- 	*
-- FROM
-- 	V_PERSON_FEMALE;