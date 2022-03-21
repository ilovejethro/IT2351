/* Output all titles with an order quantity greater than one.
Title is found in the items table. The primary key is item_id. The items
table links to the order_details table through item_id (which is a foreign key in the order_details table.
Order quantity is found in the order_details table */


SELECT title, order_qty
FROM items JOIN order_details
ON items.item_id=order_details.item_id
WHERE order_qty>1;



