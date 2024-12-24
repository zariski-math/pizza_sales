-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    p1.name, SUM(p2.price * p3.quantity) AS revenue
FROM
    pizza_types p1
        JOIN
    pizzas p2 ON p1.pizza_type_id = p2.pizza_type_id
        JOIN
    orders_details p3 ON p2.pizza_id = p3.pizza_id
GROUP BY p1.name
ORDER BY revenue DESC
LIMIT 3


