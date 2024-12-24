-- List the top 5 most ordered pizza types(pizza name) along with their quantities.

SELECT 
    p3.name, SUM(p1.quantity) AS total_quantity
FROM
    orders_details p1
        JOIN
    pizzas p2 ON p1.pizza_id = p2.pizza_id
        JOIN
    pizza_types p3 ON p2.pizza_type_id = p3.pizza_type_id
GROUP BY p3.name
ORDER BY total_quantity DESC
LIMIT 5