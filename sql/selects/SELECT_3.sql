-- SELECT customers.name AS customer
-- FROM customers
-- JOIN (SELECT customer_id, COUNT(*) AS order_count
--     FROM orders
--     GROUP BY customer_id)
-- AS orders_stat
-- ON orders_stat.customer_id = customers.id
-- WHERE MAX(orders_stat.order_count);

SELECT customers.name AS customer
FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.name
ORDER BY count(*) DESC
LIMIT 1;

SELECT customers.name AS customer
FROM customers
JOIN (SELECT customer_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id)
AS orders_stat
ON orders_stat.customer_id = customers.id
LIMIT 1;

SELECT 
    c.name, 
    count(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
ORDER BY total_orders DESC
LIMIT 1;