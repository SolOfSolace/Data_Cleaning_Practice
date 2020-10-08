USE BikeStores
GO

SELECT * FROM production.brands
SELECT * FROM production.categories
SELECT * FROM production.products
SELECT * FROM production.stocks

SELECT * FROM sales.customers
SELECT * FROM sales.order_items
SELECT * FROM sales.orders
SELECT * FROM sales.staffs
SELECT * FROM sales.stores



---Checking to see if all cutomers are unique
SELECT first_name, last_name, COUNT(*)
FROM sales.customers
GROUP BY first_name, last_name
HAVING COUNT(*) > 1
		--this returned Justina Jenkins
SELECT * FROM sales.customers
WHERE first_name = 'Justina'
AND last_name = 'Jenkins'
		--they appear to be two different people living in NY

---Checking to see if all orders are unique 
SELECT customer_id, order_date, store_id, staff_id, COUNT(*)
FROM sales.orders
GROUP BY customer_id, order_date, store_id, staff_id
HAVING COUNT(*) > 1
		--this returned no values