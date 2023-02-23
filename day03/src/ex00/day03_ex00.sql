-- Active: 1675855205543@@127.0.0.1@5432@postgres

SELECT
    pizza_name,
    price,
    pizzeria.name,
    visit_date
FROM person
    INNER JOIN person_visits ON person.id = person_visits.person_id
    INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    INNER JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE
    person.name = 'Kate'
    AND (
        price >= 800
        AND price <= 1000
    )
ORDER BY
    pizza_name,
    price,
    pizzeria.name