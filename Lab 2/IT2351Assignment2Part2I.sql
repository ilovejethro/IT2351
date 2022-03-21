/* Update the unit_price by 10% for all items with a unit_price>17.
The procedure to update and SET existing rows will be used. Safe update
mode was turned off. */
UPDATE items
SET unit_price = unit_price + (unit_price*.1)
WHERE unit_price>17;
SELECT *
FROM items;
