CREATE TABLE item_types (
    id SERIAL,
    title VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    PRIMARY KEY (id)
);