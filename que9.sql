-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(total_quantity.total_pizza_ordered),
            2) AS avg_pizza_ordered_per_day
FROM
    (SELECT 
        o1.order_date, SUM(o2.quantity) AS total_pizza_ordered
    FROM
        orders o1
    JOIN orders_details o2 ON o1.order_id = o2.order_id
    GROUP BY o1.order_date) AS total_quantity
