-- USING JOIN
SELECT customers.name AS customer
FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.id
ORDER BY count(*) DESC
FETCH FIRST 1 ROW WITH TIES; /* if there are more than one customer with the same number of orders */

-- USING JOIN + SUBQUERY
SELECT customers.name AS customer
FROM customers
JOIN (
    SELECT customer_id, count(*) AS orders_count
    FROM orders
    GROUP BY customer_id
) AS orders_stat ON orders_stat.customer_id = customers.id
ORDER BY orders_stat.orders_count DESC
FETCH FIRST 1 ROW WITH TIES /* if there are more than one customer with the same number of orders */