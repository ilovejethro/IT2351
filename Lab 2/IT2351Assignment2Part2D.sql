/* Customer_id and order_id are found in the orders table.
order_id is the primary key.
order_id links the orders table to the order_details table as a foreign key. order_qty and item_id are found
in that table. They are both foreign keys. Finally, artist is found in the items table. The primary key for that table it item_id. It will link
to the order_details table.*/


SELECT customer_id, order_date, artist, order_qty
FROM orders
JOIN order_details
ON orders.order_id=order_details.order_id
JOIN items
ON order_details.item_id=items.item_id;



