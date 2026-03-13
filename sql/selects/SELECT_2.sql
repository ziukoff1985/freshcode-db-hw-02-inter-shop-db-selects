--! Counting items as SKUs (number of rows in items table) per store and item type
--  --------------------------------------------
-- USING JOIN:
SELECT stores.title AS store, item_types.title AS item_type, count(*) AS total_sku
FROM items
JOIN stores ON items.store_id = stores.id
JOIN item_types ON items.type_id = item_types.id
GROUP BY stores.id, item_types.id
ORDER BY store, total_sku DESC, item_type;

-- USING JOIN + SUBQUERY:
SELECT stores.title AS store, item_types.title AS item_type, summary.total_sku
FROM (
    SELECT store_id, type_id, count(*) AS total_sku
    FROM items
    GROUP BY store_id, type_id
) AS summary
JOIN stores ON summary.store_id = stores.id
JOIN item_types ON summary.type_id = item_types.id
ORDER BY store, total_sku DESC, item_type;

--! Counting total QUANTITY of PIECES per store and item type
--  --------------------------------------------
-- USING JOIN:
SELECT stores.title AS store, item_types.title AS item_type, sum(items.amount) AS total_quantity
FROM items
JOIN stores ON items.store_id = stores.id
JOIN item_types ON items.type_id = item_types.id
GROUP BY stores.id, item_types.id
ORDER BY store, total_quantity DESC, item_type;

-- USING JOIN + SUBQUERY:
SELECT stores.title AS store, item_types.title AS item_type, summary.total_quantity
FROM (
    SELECT store_id, type_id, sum(amount) AS total_quantity
    FROM items
    GROUP BY store_id, type_id
) AS summary
JOIN stores ON summary.store_id = stores.id
JOIN item_types ON summary.type_id = item_types.id
ORDER BY store, total_quantity DESC, item_type;