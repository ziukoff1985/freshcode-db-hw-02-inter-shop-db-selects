-- USING JOIN
SELECT customers.name AS customer
FROM customers
JOIN orders ON orders.customer_id = customers.id
ORDER BY orders.amount DESC
LIMIT 1;

-- USING JOIN + SUBQUERY
SELECT customers.name AS customer
FROM customers
JOIN (
    SELECT customer_id FROM orders ORDER BY amount DESC LIMIT 1
    ) 
AS orders_stat
ON orders_stat.customer_id = customers.id;

-- USING JOIN + SUBQUERY
SELECT customers.name AS customer
FROM customers
JOIN orders ON orders.customer_id = customers.id
WHERE orders.amount = (
    SELECT MAX(amount) FROM orders
    );