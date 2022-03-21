/* Write select statement to give email address, order_id and order_total for each customer.
Order total will be calculated using the price per item multiplied by the quantity, minus 
the discount, plus tax and plus shipping cost. Data from three different tables 
will be used so I will join orders, order_items, and customers. Finally, 
grouping by email_address and order_id.*/

Select email_address as "Email", orders.order_id as "Order ID", SUM((item_price*quantity)-discount_amount+ship_amount+tax_amount)
 as "Order Total"
From order_items JOIN orders ON
order_items.order_id=orders.order_id
JOIN customers ON
orders.customer_id=customers.customer_id
GROUP BY email_address, orders.order_id;