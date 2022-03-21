/* Create a view to show the category name, product name, item price and 
total quantity ordered for all items. I wanted to show the total number of each 
specific product sold so I used an aggregate function for quantity.
I grouped by category and then product. I wrote a select statement to display the view.
I joined three tables (categories, products, order_items).
*/
CREATE OR REPLACE VIEW items_ordered AS
SELECT category_name as "Category", product_name as "Product Name", item_price as "Item Price", SUM(quantity) as 
"Quantity Ordered"
FROM categories JOIN products
ON categories.category_id=products.category_id
JOIN order_items 
ON products.product_id=order_items.product_id
GROUP BY category_name, product_name, item_price;
;

SELECT *
FROM items_ordered;