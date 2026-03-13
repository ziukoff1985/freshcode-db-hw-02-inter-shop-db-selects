-- USING JOIN
SELECT brands.title AS brand, count(*) AS models_count
FROM brands
JOIN models ON models.brand_id = brands.id
GROUP BY brands.id
ORDER BY models_count DESC, brands.title;

-- USING JOIN + SUBQUERY
SELECT brands.title AS brand, models_stat.total_models AS models_count
FROM brands
JOIN (
    SELECT models.brand_id, count(*) AS total_models
    FROM models
    GROUP BY models.brand_id
) AS models_stat
ON models_stat.brand_id = brands.id
ORDER BY models_count DESC, brand;