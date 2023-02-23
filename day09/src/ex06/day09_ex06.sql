CREATE OR REPLACE FUNCTION FNC_PERSON_VISITS_AND_EATS_ON_DATE
(PPERSON VARCHAR DEFAULT 'DMITRIY', PPRICE BIGINT 
DEFAULT 500, PDATE DATE DEFAULT '2022-01-08') RETURNS 
TABLE(PPIZZERIA_NAME VARCHAR) AS $$ 
	BEGIN RETURN QUERY
	SELECT pizzeria.name
	FROM person_visits
	    INNER JOIN person ON person.id = person_visits.person_id
	    INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
	    INNER JOIN menu ON menu.pizzeria_id = pizzeria.id
	WHERE
	    person.name = pperson
	    AND price < pprice
	    AND visit_date = pdate;
	END;
	$$ LANGUAGE 
PLPGSQL; 

select * from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from
    fnc_person_visits_and_eats_on_date(
        pperson := 'Anna',
        pprice := 1300,
        pdate := '2022-01-01'
    );