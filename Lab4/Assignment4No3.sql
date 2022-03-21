/*Multiply the list price by the discount percent to get the discount amount.
Use the round function to limit the result to 2 decimal points.
*/
SELECT list_price as "Price", discount_percent as "Discount percent", ROUND((list_price*(discount_percent/100)), 2) as "discount_amount"
FROM products;
