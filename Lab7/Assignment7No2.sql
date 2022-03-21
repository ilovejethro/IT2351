/* Chapter 14, Problem 1
Write a script that creates and calls a stored procedure called test.
This procedure should include a set of three SQL statements coded as a transaction
to reflect the purchase of UPS by FedEx. First, the
vendor_id column will need to be updated. Then renaming FedEx and 
deleting UPS.
*/
-- If the procedure already exists, drop it
USE ap;
DROP PROCEDURE IF EXISTS test;
-- Change delimiter
DELIMITER //

-- Create Procedure named test
CREATE PROCEDURE test()
-- Begin the procedure
BEGIN
-- Declare a variable that will store whether or not there is a SQL exception. Set it to false.
DECLARE sql_error TINYINT DEFAULT FALSE;
-- If there is an error, change the value of sql_error to TRUE
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
SET sql_error=TRUE;
START TRANSACTION;
-- Update the name of FedEx to FedUP in the Vendors table. The vendor ID of FedEx is 123.
UPDATE VENDORS
SET vendor_name="FedUP"
WHERE vendor_id=123;
-- UPS vendor_id is 122. Change all UPS invoices to FedUP invoice number (123).
UPDATE INVOICES 
SET vendor_id=123
WHERE vendor_id=122;
-- Delete UPS vendor_id
DELETE FROM VENDORS
WHERE vendor_id=122;
-- Commmit if there has not been a SQL error
IF sql_error=FALSE
THEN commit;
SELECT 'Transaction Committed' as Message;
-- If there was a SQL error, rollback the changes
ELSE rollback;
SELECT 'Transaction Rolled Back' as Message;
END IF;
-- End the procedure
END//

DELIMITER ;


