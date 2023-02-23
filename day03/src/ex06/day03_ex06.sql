WITH PIZZA_WITH_PRICE AS (SELECT
						  	  pizza_name,
						      pizzeria.name AS PIZZERIA_NAME,
						  	  price
						  FROM
						  	  pizzeria
						  INNER JOIN menu
						  	  ON menu.pizzeria_id = pizzeria.id)
SELECT
	 PIZZA_WITH_PRICE.pizza_name,
	 PIZZA_WITH_PRICE.PIZZERIA_NAME,
	 PIZZA_WITH_PRICE_CLONE.PIZZERIA_NAME,
	 PIZZA_WITH_PRICE.price
FROM
	PIZZA_WITH_PRICE
INNER JOIN PIZZA_WITH_PRICE AS PIZZA_WITH_PRICE_CLONE
	ON PIZZA_WITH_PRICE.pizza_name = PIZZA_WITH_PRICE_CLONE.pizza_name
	   AND PIZZA_WITH_PRICE.price = PIZZA_WITH_PRICE_CLONE.price
	   AND PIZZA_WITH_PRICE.PIZZERIA_NAME < PIZZA_WITH_PRICE_CLONE.PIZZERIA_NAME
ORDER BY
	PIZZA_WITH_PRICE.pizza_name