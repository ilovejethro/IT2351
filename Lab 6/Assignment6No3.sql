/* Allison Kreiner Spring 2021
Create a stored function that calculates the price of the item 
after the discount is applied. One parameter is used (item ID). 
The function will return the discounted price.
*/
USE AllisonKreiner_guitar_shop;
DROP FUNCTION IF EXISTS discount_price;
DELIMITER //
-- create Function
CREATE FUNCTION discount_price
(
item_id_param INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC READS SQL DATA
BEGIN

DECLARE discount_price_var DECIMAL(10,2);
-- Calculate price after discount
SELECT item_price - discount_amount
INTO discount_price_var
FROM order_items
WHERE item_id=item_id_param;
RETURN discount_price_var;
END//
DELIMITER ;
SELECT item_id, discount_price(item_id) as 'Discounted Price'
FROM order_items;