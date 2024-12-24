-- Identify the most common pizza size ordered.
SELECT 
    p1.size, count(p2.order_details_id) AS count_order
FROM
    pizzas p1
        JOIN
    orders_details p2 ON p1.pizza_id = p2.pizza_id
GROUP BY p1.size
ORDER BY count_order DESC




