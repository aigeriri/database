WITH most_orders_customer AS (
    SELECT c.customer_id, COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
    ORDER BY total_orders DESC
    LIMIT 1
)
SELECT SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN most_orders_customer moc ON o.customer_id = moc.customer_id;
