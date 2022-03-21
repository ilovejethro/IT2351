/*Display order_id, order_date, ship_date if not null, use DATE_ADD function to add two days to order_date to
create approx_ship_date, calculation of days between order_date and ship_date. Add conditions
to the where statement to select Month 3 for March and the year. Also specify in the where
statement that the ship_date is not null.
*/
SELECT order_id, order_date, DATE_ADD(order_date, INTERVAL 2 DAY) as "approx_ship_date", ship_date, DATEDIFF(ship_date, order_date) as "days_to_ship"
FROM orders
WHERE ship_date IS NOT NULL
AND MONTH(order_date)="3" AND YEAR(order_date)="2018";

