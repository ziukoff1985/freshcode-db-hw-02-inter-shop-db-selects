CREATE TABLE items (
    id SERIAL,
    category_id INT NOT NULL,
    type_id INT NOT NULL,
    brand_id INT NOT NULL,
    model_id INT NOT NULL,
    price NUMERIC(10, 2) NOT NULL CONSTRAINT items_price CHECK (price > 0),
    store_id INT NOT NULL,
    amount INT NOT NULL CONSTRAINT items_amount CHECK (amount >= 0) DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_items_item_categories FOREIGN KEY (category_id) REFERENCES item_categories,
    CONSTRAINT fk_items_item_types FOREIGN KEY (type_id) REFERENCES item_types,
    CONSTRAINT fk_items_brands FOREIGN KEY (brand_id) REFERENCES brands,
    CONSTRAINT fk_items_models FOREIGN KEY (model_id) REFERENCES models,
    CONSTRAINT fk_items_stores FOREIGN KEY (store_id) REFERENCES stores
);

