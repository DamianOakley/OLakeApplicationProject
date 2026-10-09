-- 01_orders.sql
-- Creates the demo table and 15 sample rows in Postgres.
-- Run inside psql:  \i /tmp/01_orders.sql   (or paste it at the demo=# prompt)

CREATE TABLE orders (
    order_id      INTEGER PRIMARY KEY,
    customer_id   INTEGER        NOT NULL,
    product_name  TEXT           NOT NULL,
    quantity      INTEGER        NOT NULL,
    price         NUMERIC(10,2)  NOT NULL,
    status        TEXT           NOT NULL,
    order_date    TIMESTAMP      NOT NULL DEFAULT NOW()
);

INSERT INTO orders (order_id, customer_id, product_name, quantity, price, status, order_date) VALUES
(1,  101, 'Wireless Mouse',              2,  24.99, 'delivered', '2026-09-01 09:15:00'),
(2,  102, 'Mechanical Keyboard',         1,  89.50, 'delivered', '2026-09-02 14:30:00'),
(3,  103, 'USB-C Hub',                   3,  35.00, 'shipped',   '2026-09-04 11:05:00'),
(4,  101, 'Laptop Stand',                1,  42.75, 'delivered', '2026-09-05 16:45:00'),
(5,  104, '27-inch Monitor',             1, 219.99, 'shipped',   '2026-09-08 10:20:00'),
(6,  105, 'Webcam HD',                   2,  59.90, 'pending',   '2026-09-10 13:00:00'),
(7,  102, 'Noise-Cancelling Headphones', 1, 149.00, 'delivered', '2026-09-11 08:40:00'),
(8,  106, 'Phone Charger',               4,  15.25, 'cancelled', '2026-09-13 19:10:00'),
(9,  107, 'External SSD 1TB',            1, 109.99, 'shipped',   '2026-09-15 12:25:00'),
(10, 103, 'Desk Lamp',                   2,  27.80, 'pending',   '2026-09-17 15:50:00'),
(11, 108, 'Bluetooth Speaker',           1,  64.99, 'delivered', '2026-09-19 09:55:00'),
(12, 104, 'HDMI Cable',                  5,   8.49, 'delivered', '2026-09-21 17:35:00'),
(13, 109, 'Ergonomic Chair',             1, 275.00, 'pending',   '2026-09-24 11:15:00'),
(14, 105, 'Mouse Pad XL',                2,  18.00, 'cancelled', '2026-09-26 14:05:00'),
(15, 110, 'Portable Power Bank',         1,  39.95, 'shipped',   '2026-09-29 10:30:00');

-- Sanity check
SELECT COUNT(*) FROM orders;
SELECT status, COUNT(*), SUM(price * quantity) AS total
FROM orders GROUP BY status ORDER BY status;
