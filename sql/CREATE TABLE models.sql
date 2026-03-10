CREATE TABLE models (
    id SERIAL,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    brand_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_models_brands FOREIGN KEY (brand_id) REFERENCES brands
);