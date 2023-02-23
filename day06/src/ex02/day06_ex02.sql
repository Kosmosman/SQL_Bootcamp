SELECT
    person.name,
    pizza_name,
    price,
    ROUND(price / 100 * (100 - discount)) AS discount_price,
    pizzeria.name
FROM person_order
    INNER JOIN person ON person_order.person_id = person.id
    INNER JOIN pizzeria ON person_discounts.pizzeria_id = pizzeria.id
    INNER JOIN person_discounts ON person_discounts.person_id = person_order.person_id AND pizzeria.id = person_discount.pizzeria_id
    INNER JOIN menu ON person_order.menu_id = menu.id
ORDER BY person.name, pizza_name