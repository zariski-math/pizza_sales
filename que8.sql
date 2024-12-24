-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT 
    p1.category, SUM(p3.quantity) AS total_no
FROM
    pizza_types p1
        JOIN
    pizzas p2 ON p1.pizza_type_id = p2.pizza_type_id
        JOIN
    orders_details p3 ON p2.pizza_id = p3.pizza_id
GROUP BY p1.category

