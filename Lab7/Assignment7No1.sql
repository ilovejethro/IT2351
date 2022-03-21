/* Delete a customer from the customers table. I have selected 
the customer with vendor_id=89. First, I would need to identify what invoices
relate to that customer. After identifying the invoices, the line items from 
those invoices would need to be deleted. Then the invoices would need to be
deleted. Finally, the customer could be deleted.

*/
-- If the procedure already exists, drop it
USE ap;
DROP PROCEDURE IF EXISTS deleteCustomer;
-- Change delimiter
DELIMITER //

-- Create Procedure named test
CREATE PROCEDURE deleteCustomer()
-- Begin the procedure
BEGIN
-- Declare a variable that will store whether or not there is a SQL exception. Set it to false.
DECLARE sql_error TINYINT DEFAULT FALSE;
-- If there is an error, change the value of sql_error to TRUE
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
SET sql_error=TRUE;
START TRANSACTION;
-- Delete line items from invoice_line_items table associated with vendor89
DELETE FROM invoice_line_items
WHERE invoice_id IN 
(SELECT invoice_id FROM invoices 
JOIN vendors ON
invoices.vendor_id=vendors.vendor_id
WHERE vendor_id=89);
-- Delete invoices associated with vendor 89
DELETE FROM invoices
WHERE invoice_id IN
(SELECT invoice_id FROM invoices 
JOIN vendors ON
invoices.vendor_id=vendors.vendor_id
WHERE vendor_id=89);
-- Delete from vendor contacts
DELETE FROM vendor_contacts
WHERE vendor_id=89;
-- Delete from vendors
DELETE FROM vendors
WHERE vendor_id=89;
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





