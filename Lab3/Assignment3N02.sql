/* Counting all orders from the orders table. Use the SUM function to calculate
the total ship_amount for all the orders*/
SELECT COUNT(*) as "Number of Orders", SUM(ship_amount)
FROM orders;
