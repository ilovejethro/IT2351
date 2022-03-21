/* Chapter 14, Problem 2
Write a script that creates and calls a stored procedure called test.
This procedure should include a set of two SQL statements coded as a transaction
to delete the row with an invoice_id of 114 from the invoices table. All line
items from that invoice must be deleted first from the invoice_line_items table
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
-- Delete line items from invoice_line_items table for invoice 114
DELETE FROM invoice_line_items
WHERE invoice_id=114;
-- Delete invoice_id 114
DELETE FROM invoices
WHERE invoice_id=114;
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



