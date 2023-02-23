CREATE TABLE person_audit(
	created timestamp with time zone not null default current_timestamp,
	type_event char(1) not null default 'I',
	row_id bigint not null,
	name varchar,
	age integer,
	gender varchar,
	address varchar,
	CONSTRAINT ch_type_event CHECK(type_event IN ('I', 'D', 'U'))
);

CREATE OR REPLACE FUNCTION fnc_trg_person_insert_audit()
RETURNS TRIGGER AS $person_audit$
	BEGIN
		INSERT INTO person_audit(row_id, name, age, gender, address)
		SELECT NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address FROM person LIMIT 1;
		RETURN NULL;
	END;
$person_audit$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_person_insert_audit
	AFTER INSERT ON person
	FOR EACH ROW
	EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');

SELECT * FROM person_audit