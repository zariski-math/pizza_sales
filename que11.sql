-- Calculate the percentage contribution of each pizza category to total revenue.
 
SELECT 
    p3.category,
    (SUM(p1.price * p2.quantity) / (SELECT 
            SUM(q1.price * q2.quantity)
        FROM
            pizzas q1
                JOIN
            orders_details q2 ON q1.pizza_id = q2.pizza_id)) * 100 AS percentage_wise_revenue
FROM
    pizzas p1
        JOIN
    orders_details p2 ON p1.pizza_id = p2.pizza_id
        JOIN
    pizza_types p3 ON p1.pizza_type_id = p3.pizza_type_id
GROUP BY p3.category
ORDER BY percentage_wise_revenue DESC



