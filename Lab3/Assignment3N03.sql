/* First counting the product IDs with the COUNT function. Then getting the maximum value
for each category using MAX function. Finally get category_name by joining on customer_id.
Grouped by category_name. Use descending sorting to list highest number of products first.*/
SELECT COUNT(product_id) as "Number of Products", MAX(list_price), category_name
FROM products JOIN categories ON
products.category_id=categories.category_id
GROUP BY category_name
ORDER BY COUNT(product_id) DESC;
