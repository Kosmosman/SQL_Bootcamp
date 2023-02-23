SELECT 
	CONCAT(name, ' (age:', age, ',gender:''', gender, ''',address:''', address, ''')') AS person_informations
FROM 
	person
ORDER BY
	person_informations;