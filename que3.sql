-- Identify the highest-priced pizza.
SELECT 
    p2.name, p1.price
FROM
    pizzas p1
        JOIN
    pizza_types p2 ON p1.pizza_type_id = p2.pizza_type_id
ORDER BY p1.price DESC
LIMIT 1
