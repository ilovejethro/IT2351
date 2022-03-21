/* customer_id and order_date are found in the orders table. 
Order_id is the primary key in the orders table. 
Order_id links to the order_details table as a foreign key. order_qty and item_id are found
in that table. They are both foreign keys.*/


SELECT customer_id, order_date, item_id, order_qty
FROM orders
JOIN order_details
ON orders.order_id=order_details.order_id;



