-- Calculate the total revenue generated from pizza sales.
select round(sum(pizzas.price*orders_details.quantity),2) as revenue
from pizzas join orders_details
on pizzas.pizza_id = orders_details.pizza_id