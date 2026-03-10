CREATE TABLE orders (
    id SERIAL,
    code VARCHAR(20) NOT NULL UNIQUE,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount NUMERIC(10, 2) NOT NULL CONSTRAINT orders_amount CHECK (amount >= 0),
    paid BOOLEAN NOT NULL DEFAULT FALSE,
    customer_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers
);