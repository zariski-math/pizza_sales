-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    p1.category, SUM(p3.quantity) AS quantity
FROM
    pizza_types p1
        JOIN
    pizzas p2 ON p1.pizza_type_id = p2.pizza_type_id
        JOIN
    orders_details p3 ON p2.pizza_id = p3.pizza_id
GROUP BY p1.category
ORDER BY quantity DESC