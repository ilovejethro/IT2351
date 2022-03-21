/* First identify items for the columns which are the category name, product_name,
and quanity for each category. Select those items. Then do two joins to get
the required data from three different tables. Finally, group by the category_name
and then the product_name. The rollup gives the grand total at the end. Instead of allowing null values, the IF (GROUPING) function
is used to replace null with the literal value Grand Total or Category Total*/
SELECT IF (GROUPING(category_name)=1, "Grand Total", category_name) as "Category Name", 
IF (GROUPING(product_name)=1, 
"Category Total", product_name), COUNT(order_items.quantity)
FROM order_items JOIN products ON
order_items.product_id=products.product_id
JOIN categories ON
products.category_id=categories.category_id
GROUP BY category_name, product_name WITH ROLLUP;

