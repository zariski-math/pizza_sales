-- Determine the distribution of orders by hour of the day.
SELECT 
    HOUR(orders.order_time) AS hours,
    COUNT(orders.order_id) AS total_order
FROM
    orders
GROUP BY hours
 


