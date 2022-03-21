/* Allison Kreiner Spring 2021
Attempt to create an event that runs once per year to see which products have not been sold in the last year.
First, create the event. Then use SQL statements to find products
that don't have any sales in the previous 365 days.
I think I have the event scheduled correctly, but am unable 
to get the code correct for displaying the products that have
not been ordered during the year. My planned approach was to
find the products where the total count of the quantity for the previous year 
was zero.*/
SHOW VARIABLES LIKE 'event_scheduler';

SET GLOBAL event_scheduler=ON;
DROP EVENT IF EXISTS yearly_product_audit;
DELIMITER //
CREATE EVENT yearly_product_audit
ON SCHEDULE EVERY 1 YEAR
STARTS NOW()
DO BEGIN
DECLARE product_id_var INT;
SELECT product_id INTO product_id_var
FROM order_items JOIN orders
ON order_items.order_id=orders.order_id
WHERE order_date>= (CURDATE()-365) and order_date<CURDATE()
AND quantity=NULL;
END//


