/*Customer_first_name, customer_last_name, customer_city, customer_state are from the customers table (primary key customer_id). 
order_date and shipped_date  are from the orders table Foreign key is customer_id.*/
SELECT concat(customer_first_name, " ", customer_last_name) AS "Customer Name", customer_city, customer_state, order_date, shipped_date
FROM customers JOIN orders
ON customers.customer_id = orders.customer_id
ORDER BY customer_state, customer_city, customer_last_name, customer_first_name;