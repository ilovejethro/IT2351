/*Using string functions on email_address data. The LENGTH function returns the length of 
the string. The locate function will find the first "@" and give the position. Use
the SUBSTRING function to separate out the username and domain based on the
location of the @
*/
SELECT email_address, LENGTH(email_address) as "Length", LOCATE("@", email_address) as "@", 
SUBSTRING(email_address, 1, LOCATE("@", email_address)-1) as "Username",
SUBSTRING(email_address, LOCATE("@", email_address)+1) as "Domain"
FROM customers;
