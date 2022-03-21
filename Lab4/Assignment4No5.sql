/*Start by selecting desired data. This includes category_name, product_name, total_sales for each product,
and the high and low prices for each category.
Join order_items, categories, and product tables. Group by product. 
Use the First_Value function to get item with highest sales total in category. Partition by category_name.
Use the Last_Value function to get item with lowest sales total in category. Partition by category_name
Group by Product_name and then category_name*/
SELECT category_name, product_name, SUM(item_price*quantity) as "total_sales", 
FIRST_VALUE(product_name) OVER (PARTITION BY category_name ORDER BY SUM(item_price*quantity) DESC) as "highest_sales",
LAST_VALUE(product_name) OVER (PARTITION BY category_name ORDER BY SUM(item_price*quantity) DESC
RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as "lowest_sales"
FROM categories c JOIN products p
ON c.category_id=p.category_id
JOIN order_items o
ON p.product_id=o.product_id
GROUP BY product_name, category_name;



