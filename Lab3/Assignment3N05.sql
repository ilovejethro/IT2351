/* Instead of using a join and distinct, I used a subquery in the where clause.
The inner query is evaluated first. Then the outer query is evaluated and will give 
the category name if it is in the first result set*/
SELECT  category_name as "Category Name"
FROM categories
WHERE category_name IN (SELECT category_name FROM categories)
ORDER BY category_name;

