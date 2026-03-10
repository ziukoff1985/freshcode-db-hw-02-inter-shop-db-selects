CREATE TABLE item_order (
    item_id INT,
    order_id INT,
    CONSTRAINT fk_item_order_items FOREIGN KEY (item_id) REFERENCES items,
    CONSTRAINT fk_item_order_orders FOREIGN KEY (order_id) REFERENCES orders
);