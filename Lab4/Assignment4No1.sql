/*Returning the list_price in multiple formats. Use FORMAT function to convert the number to
a character string with one number after the decimal. The CAST function converts data types,
in this case decimal to integer. CONVERT in this situation performs the same function,
with different syntax.*/
SELECT list_price, FORMAT(list_price, 1) as "formatted price", 
CONVERT(list_price, SIGNED) as "converted price", CAST(list_price as SIGNED) as "Cast price"
FROM products;
