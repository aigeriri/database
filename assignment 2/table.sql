-- Create customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    email TEXT,
    phone TEXT,
    address TEXT
);

-- Create orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    total_amount NUMERIC,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create order_items table
CREATE TABLE order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    unit_price NUMERIC,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create products table
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category_id INTEGER,
    description TEXT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Create categories table
CREATE TABLE categories (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT
);
