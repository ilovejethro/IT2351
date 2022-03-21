## Question 1: 
* The Categories table is connected to the Products table in a one to many relationship. The primary key for the Categories table is category_id and this is a foreign key in the Product table.<br>
* The products table is related to the order_items table in a one to many relationship. The primary key of the products table is product_id, and that is a foreign key in the order_items table.<br>
* The customers table is related to the both the orders and addresses tables in one to many relationships. The primary key of the customers table is customer_id. This is a foreign key in the orders and addresses tables.<br>
* The orders table is connected to the order_items table in a one to many relationship. The primary key for the orders table is order_id and this is a foreign key in the order_items table. The order_items table has two foreign keys (order_id, product_id).<br>
* The cardinality of all relationships is one to many. This means exactly one instance in the left table will be related to at least one and potentially many records in the right table. An example occurs in the categories and products table. One category can be related to multiple products in the products table. Categories is the left table and Products is the right table.<br>

## Question 2
To get into first normal form, there should not be any repeating groups. First name and last name will be separated. The classes will be listed separately.
After that, there shouldn't be any duplicate data or columns with multiple fields. Since there are multiple students in IT 1025, a new table can be created with data related to that class. Also, there are multiple students with the same major. Finally, there can be multiple classes per student. A separate field will be created for each student record per class.
This is where the second normal form comes in. There are multiple rows with the same student data except for different classes taken. I will create a table just for classes. I will also add a majors table.
In the third normal form, it is important to make sure that the columns in the table depend only on the primary key for the table. I have checked on the tables and all fields depend only on the primary key.
My tables are as follows:
### majors 
  * major_id INT   PRIMARY KEY   AUTO_INCREMENT,
  * major_name VARCHAR(30) NOT NUll

### students 
  * student_id VARCHAR(10)       PRIMARY KEY UNIQUE,
  * student_first_name  VARCHAR(40)   NOT NULL,
  * student_last_name VARCHAR(40) NOT NULL,
  * student_address VARCHAR(50) NOT NULL,
  * email_address VARCHAR(50) NOT NULL,
  * major_id INT NOT NULL (foreign key from majors table)
    
### classes
  * class_id  INT   PRIMARY KEY   AUTO_INCREMENT,
  * class_name VARCHAR(30) NOT NUll
 

### student_classes (this table links the student_id data with the classes they are taking. It has a composite primary key. Both field are foreign keys from another table).
  * student_id VARCHAR(10) NOT NULL (foreign key from students)
  * class_id INT NOT NULL (foreign key from classes)
   

