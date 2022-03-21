/* Output customer names and titles purchased for customers in Ohio.
Customer_first_name, customer_last_name and customer_state are found in the customers table. The primary key is customer_id.
The customers table links to the orders table, where order_id is the primary key. The orders table links to the order_details table where
the item_id is a foreign key. The item_id is the foreign key for the items table, where item_id is the primary key. 
titleis found in the items table. */


SELECT CONCAT(customer_first_name, " ", customer_last_name) as "Customer Name", title, customers.customer_id, order_date, items.item_id, order_qty
FROM customers JOIN orders
ON customers.customer_id=orders.customer_id
JOIN order_details
ON orders.order_id=order_details.order_id
JOIN items
ON order_details.item_id=items.item_id
WHERE customer_state="OH";




