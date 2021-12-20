CREATE TABLE IF NOT EXISTS products
(
    id SERIAL,
    name TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL DEFAULT 0.00,
    CONSTRAINT products_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS store(
    store_id INT,
    product_id INT,
    is_avialable BOOLEAN,
    CONSTRAINT products_pkey PRIMARY KEY (store_id),
    FOREIGN KEY(product_id) REFERENCES products(id)
);