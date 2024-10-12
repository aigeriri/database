-- Insert into customers
INSERT INTO customers (customer_id, customer_name, email, phone, address)
VALUES
(1, 'Alice', 'alice@example.com', '1234567890', '123 Main St'),
(2, 'Bob', 'bob@example.com', '1234567891', '124 Main St'),
(3, 'Charlie', 'charlie@example.com', '1234567892', '125 Main St'),
(4, 'David', 'david@example.com', '1234567893', '126 Main St'),
(5, 'Eve', 'eve@example.com', '1234567894', '127 Main St'),
(6, 'Frank', 'frank@example.com', '1234567895', '128 Main St'),
(7, 'Grace', 'grace@example.com', '1234567896', '129 Main St'),
(8, 'Heidi', 'heidi@example.com', '1234567897', '130 Main St'),
(9, 'Ivan', 'ivan@example.com', '1234567898', '131 Main St'),
(10, 'Judy', 'judy@example.com', '1234567899', '132 Main St');

-- Insert into orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
(1, 1, '2024-10-01', 100),
(2, 2, '2024-10-02', 150),
(3, 3, '2024-10-03', 200),
(4, 1, '2024-10-04', 250),
(5, 2, '2024-10-05', 300),
(6, 3, '2024-10-06', 350),
(7, 4, '2024-10-07', 400),
(8, 5, '2024-10-08', 450),
(9, 6, '2024-10-09', 500),
(10, 7, '2024-10-10', 550);

-- Insert into products
INSERT INTO products (product_id, product_name, category_id, description)
VALUES
(1, 'Product A', 1, 'Description of Product A'),
(2, 'Product B', 1, 'Description of Product B'),
(3, 'Product C', 2, 'Description of Product C'),
(4, 'Product D', 2, 'Description of Product D'),
(5, 'Product E', 3, 'Description of Product E'),
(6, 'Product F', 3, 'Description of Product F'),
(7, 'Product G', 4, 'Description of Product G'),
(8, 'Product H', 4, 'Description of Product H'),
(9, 'Product I', 5, 'Description of Product I'),
(10, 'Product J', 5, 'Description of Product J');

-- Insert into categories
INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3'),
(4, 'Category 4'),
(5, 'Category 5');

-- Insert into order_items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 2, 25),
(2, 2, 2, 3, 20),
(3, 3, 3, 4, 15),
(4, 4, 4, 1, 50),
(5, 5, 5, 2, 100),
(6, 6, 6, 3, 90),
(7, 7, 7, 1, 80),
(8, 8, 8, 5, 70),
(9, 9, 9, 4, 60),
(10, 10, 10, 2, 110);
