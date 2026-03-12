-- USING JOIN
SELECT customers.name AS customer
FROM customers
JOIN orders ON orders.customer_id = customers.id
ORDER BY orders.amount DESC
FETCH FIRST 1 ROW WITH TIES;

-- USING JOIN + SUBQUERY
SELECT customers.name AS customer
FROM customers
JOIN orders ON orders.customer_id = customers.id
WHERE orders.amount = (
    SELECT MAX(amount) FROM orders
    );