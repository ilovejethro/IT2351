# Question 1: Delete a customer from the customers table. 
I have selected the customer with vendor_id=89. First, I would need to identify what invoices
relate to that customer. After identifying the invoices, the line items from 
those invoices would need to be deleted. Then the invoices would need to be
deleted. The next step would be to delete the customer contact information and finally the customer.
I have implemented it in SQL workbench but it isn't working exactly right. The transaction
is rolled back for some reason. 

# Question 4:
 1. The four privilege levels are global, database, table, and column. If a user is granted global privileges, they can
 access any table in any database. They could access ap, my_guitar_shop, etc.
 A user with database privilege can access any table in one specific database. Maybe this user could only access the tables of the ex database.
 Table is more limited. That user can only access the columns in a specific table or tables. I could give a user that details with customer contact 
 information access to only the vendor_contact table of the ap database. Finally, column is the most limited. Maybe I could give a user access
 to only the phone number column of the vendors tables in the ap database. In general, you want give a user only the privileges that are 
 necessary to do their job. If they are the database administrator, they would have global. If they are the customer service representative, you might want
 to limit to table or column privileges.
 2. Instead of granting individual privileges to individual users, you create roles. Then you grant privileges to the role.
 I could create a role for a sale person that is able to give discounts that works with the discount amounts in the guitar database table.
 They would have access to the products tables and be able to modify the discount amounts.
 A customer service representative would have access to the customers table.
 I would also create a role for the store manager that has database privileges.
 The database administrator would have global privileges for all databases.
