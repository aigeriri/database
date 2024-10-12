WITH order_summary AS (
    SELECT o.order_id, c.customer_name, o.order_date, o.total_amount, 
           SUM(oi.quantity) AS total_quantity
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id, c.customer_name, o.order_date, o.total_amount
)
SELECT * FROM order_summary;
