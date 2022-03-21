/*Create view order_item_products with fields from three tables.
Joins will be used to get the data from the three tables.
Orders will join order_items on order_id.
Orders will join products on product_id.  Calculate price minus discount amount 
and total amount for item including tax and quantity*/
CREATE OR REPLACE VIEW order_item_products AS
SELECT orders.order_id, order_date, tax_amount, ship_date, product_name, item_price, discount_amount, 
(item_price-discount_amount) as final_price, quantity, ((item_price-discount_amount)*quantity) as item_total
FROM orders JOIN order_items 
ON orders.order_id=order_items.order_id
JOIN products
ON order_items.product_id=products.product_id;

SELECT *
FROM order_item_products;


