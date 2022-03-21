/*  Customer name will be retrieved from the customers table. The primary key is customer_id.
The customers table links to the orders table via customer_id, where order_id is found (and is the primary key).
This links to the order_details table as a foreign key. order_qty and item_id are found
in that table. They are both foreign keys. Finally, artist is found in the items table. The primary key for that table it item_id. It will link
to the order_details table.*/


SELECT CONCAT(customer_first_name, " ", customer_last_name) as "Customer Name", order_date, artist, order_qty
FROM customers JOIN orders
ON customers.customer_id=orders.customer_id
JOIN order_details
ON orders.order_id=order_details.order_id
JOIN items
ON order_details.item_id=items.item_id;



