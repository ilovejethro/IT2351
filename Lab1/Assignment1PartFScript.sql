/* IT2351 Assignment 1 Part 6 - Allison Kreiner
Calculate date to ship and use aliases, sort by customer_id and days_to_ship*/
SELECT customer_id AS "Customer ID", order_date AS "Order Date", shipped_date AS "Shipped Date", DATEDIFF(shipped_date, order_date) AS Days_to_Ship FROM orders
ORDER BY customer_id, Days_to_Ship;