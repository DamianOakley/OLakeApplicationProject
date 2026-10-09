-- 02_bonus_changes.sql
-- Two updates and two inserts, to demonstrate a second sync.
-- Run in psql AFTER the first sync has been verified in Spark.

UPDATE orders SET status = 'shipped'   WHERE order_id = 6;   -- was pending
UPDATE orders SET status = 'delivered' WHERE order_id = 3;   -- was shipped

INSERT INTO orders (order_id, customer_id, product_name, quantity, price, status, order_date) VALUES
(16, 111, 'USB Microphone', 2, 29.99, 'pending', '2026-10-01 10:00:00'),
(17, 112, 'Cable Ties',     3,  4.50, 'pending', '2026-10-02 12:30:00');

SELECT COUNT(*) FROM orders;
SELECT status, COUNT(*), SUM(price * quantity) AS total
FROM orders GROUP BY status ORDER BY status;
