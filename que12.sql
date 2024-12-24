-- Analyze the cumulative revenue generated over time.
select order_date, sum(revenue) over(order by order_date) as cumulative_revenue
from
(SELECT 
    p3.order_date, SUM(p1.quantity * p2.price) AS revenue
FROM
    orders_details p1
        JOIN
    pizzas p2 ON p1.pizza_id = p2.pizza_id
        JOIN
    orders p3 ON p3.order_id = p1.order_id
GROUP BY p3.order_date) as sales

