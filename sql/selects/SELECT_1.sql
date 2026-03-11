-- SELECT models.title AS model, brands.title AS brand
-- FROM models
-- JOIN brands ON models.brand_id = brands.id;

-- SELECT brands.title AS brand, count(*) AS models_count
-- FROM models
-- JOIN brands ON models.brand_id = brands.id
-- -- GROUP BY models.brand_id, brands.title
-- GROUP BY brands.id
-- ORDER BY models_count DESC, brands.title;

-- USING JOIN
SELECT brands.title AS brand, count(*) AS models_count
FROM brands
JOIN models ON models.brand_id = brands.id
GROUP BY brands.title
ORDER BY models_count DESC, brands.title;

-- USING SUBQUERY
SELECT brands.title AS brand, models_stat.count AS models_count
FROM brands
JOIN (
    SELECT models.brand_id, count(*) AS count
    FROM models
    GROUP BY models.brand_id
) AS models_stat
ON models_stat.brand_id = brands.id
ORDER BY models_count DESC, brand;

-- USING CORRELATED SUBQUERY
SELECT 
    b.title AS brand,
    (SELECT count(*) FROM models m WHERE m.brand_id = b.id) AS models_count
FROM brands b
ORDER BY models_count DESC, brand;

SELECT models.brand_id, count(*) AS count
    FROM models
    GROUP BY models.brand_id;