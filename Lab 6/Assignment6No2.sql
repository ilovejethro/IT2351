/* Allison Kreiner Spring 2021
Create a procedure insert a new category into the Categories table.
This is the unsuccessful attempt that attempts to insert a duplicate Category Name.
Uses Exit handler for 1062 error.
*/
USE AllisonKreiner_guitar_shop;
DROP PROCEDURE IF EXISTS insertCategory;
DELIMITER //
-- create Procedure
CREATE PROCEDURE insertCategory()
BEGIN 
DECLARE duplicate_entry_for_key INT DEFAULT FALSE;
BEGIN
DECLARE EXIT HANDLER FOR 1062
	SET duplicate_entry_for_key = TRUE;
-- Insert new category data into the Categories table
	INSERT INTO categories VALUES (5, 'Guitars');
    SELECT '1 row was inserted' AS message;
END;
IF duplicate_entry_for_key = TRUE THEN
	SELECT 'Row was not inserted. Duplicate entry.' AS message;
END IF;
END//
CALL insertCategory();

