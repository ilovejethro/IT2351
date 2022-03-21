/* Allison Kreiner Spring 2021
Create a procedure that counts all the products in the products table. State the schema
to use. Declare a varaible. 
Use conditional if statement to determine if the product count is greater than equal to 20
or less than 20. Then, add a message to state the result.
*/
USE AllisonKreiner_guitar_shop;
DROP PROCEDURE IF EXISTS productCount;
DELIMITER //
-- create Procedure
CREATE PROCEDURE productCount()
BEGIN 
-- declare an integer variable to hold number of products
	DECLARE countProducts INT;
    -- assign the count aggregate function to the variable countProducts
    SELECT count(*) INTO countProducts
    FROM products;
    -- Output the value of the countProducts variable
    -- Is the product count greater than or equal to 20
    IF countProducts>=20 THEN
		SELECT 'The number of products is greater than or equal to 20' AS Result;
    ELSE 
		SELECT 'The number of products is less than 20' AS Result;
	END IF;
END//
CALL productCount();