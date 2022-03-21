/* Insert a row for the customers table. All fields are character fields with the exception of customer_id (which is int). 
The customer_state field is restricted to a two character string. The other strings can have a variable number of char up to a limit
In the OM table, the customer_id is not auto-increment. If it was, it would not be necessary to 
specify the customer_id number. The table has 25 customer ids and a null value, where all values are blank 
I have also included a SELECT statement to display that the new row has been inserted */
INSERT INTO customers
VALUES (26, "Allison", "Kreiner", "1234 Parkway", "Alliance", "OH", "44601", "330-555-1212", "330-555-3232");
SELECT *
FROM customers;






