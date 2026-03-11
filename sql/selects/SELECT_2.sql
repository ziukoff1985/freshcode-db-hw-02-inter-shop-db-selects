-- VERSION A: Total Physical Quantity (Sum of 'amount' column)
-- Counts the total number of physical units available across all product models.

-- USING JOIN:
SELECT stores.title AS store, item_types.title AS type, SUM(items.amount) AS total_qty
FROM items
JOIN stores ON items.store_id = stores.id
JOIN item_types ON items.type_id = item_types.id
GROUP BY item_types.title, stores.title
ORDER BY store, total_qty DESC;

-- USING JOIN + SUBQUERY:
SELECT stores.title AS store, item_types.title AS type, summary.total_qty
FROM (
    SELECT store_id, type_id, SUM(amount) AS total_qty
    FROM items
    GROUP BY store_id, type_id
) AS summary
JOIN stores ON summary.store_id = stores.id
JOIN item_types ON summary.type_id = item_types.id
ORDER BY store, total_qty DESC;

-- ============================================================================================

-- VERSION B: Total SKU / Product Lines (Count of rows)
-- Counts how many unique product listings (rows) exist for each type in each store.

-- USING JOIN:
SELECT stores.title AS store, item_types.title AS type, count(*) AS total_qty
FROM items
JOIN stores ON items.store_id = stores.id
JOIN item_types ON items.type_id = item_types.id
GROUP BY item_types.title, stores.title
ORDER BY store, total_qty DESC;



-- USING JOIN + SUBQUERY:
SELECT stores.title AS store, item_types.title AS type, summary.total_qty
FROM (
    SELECT store_id, type_id, count(*) AS total_qty
    FROM items
    GROUP BY store_id, type_id
) AS summary
JOIN stores ON summary.store_id = stores.id
JOIN item_types ON summary.type_id = item_types.id
ORDER BY store, total_qty DESC;