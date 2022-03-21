/* Title, artist, and unit_price are from the items table (primary key item_id).
Order quanityt is from the order_details table. Foreign key is item_id.*/
SELECT title, artist, unit_price, order_qty
FROM items JOIN order_details
ON items.item_id=order_details.item_id
ORDER BY title, artist;