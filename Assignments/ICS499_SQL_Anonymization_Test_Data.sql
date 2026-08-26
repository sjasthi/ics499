-- ICS 499 - SQL Data Anonymization Assignment
-- Synthetic Test Data
-- IMPORTANT: All names, addresses, emails, and phone numbers in this file are fictional.
-- The file is intentionally designed to test:
--   1. Anonymization of names, addresses, emails, and phone numbers
--   2. Consistency when the same value appears multiple times
--   3. Consistency across multiple tables
--   4. Preservation of non-sensitive values and SQL structure
--   5. Handling of apostrophes and different INSERT statement styles

DROP TABLE IF EXISTS shipping;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(30),
    loyalty_level VARCHAR(20),
    active BOOLEAN
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    order_date DATE,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2)
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    customer_id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(30),
    contact_type VARCHAR(30),
    notes VARCHAR(255)
);

CREATE TABLE shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    recipient_name VARCHAR(100),
    shipping_address VARCHAR(200),
    phone VARCHAR(30),
    carrier VARCHAR(50),
    tracking_status VARCHAR(50)
);

-- -------------------------------------------------------------------
-- CUSTOMERS
-- -------------------------------------------------------------------

INSERT INTO customers
(customer_id, name, address, email, phone, loyalty_level, active)
VALUES
(101, 'Daniel Carter', '1824 Cedar Lane, Minneapolis, MN 55403', 'daniel.carter@example.com', '612-555-1101', 'Gold', TRUE),
(102, 'Priya Nair', '744 Summit Avenue, St. Paul, MN 55105', 'priya.nair@example.com', '651-555-2202', 'Silver', TRUE),
(103, 'Michael Rodriguez', '915 Lake Street, Minneapolis, MN 55408', 'michael.rodriguez@example.com', '763-555-3303', 'Bronze', TRUE),
(104, 'Emily Chen', '412 Oak Ridge Drive, Eden Prairie, MN 55344', 'emily.chen@example.com', '952-555-4404', 'Gold', TRUE),
(105, 'Samuel Johnson', '301 River Road, Maple Grove, MN 55369', 'samuel.johnson@example.com', '763-555-5505', 'Silver', FALSE),
(106, 'Aisha Khan', '88 Highland Parkway, Bloomington, MN 55420', 'aisha.khan@example.com', '952-555-6606', 'Gold', TRUE),
(107, 'Robert O''Connor', '1777 Grand Avenue, St. Paul, MN 55105', 'robert.oconnor@example.com', '651-555-7707', 'Bronze', TRUE),
(108, 'Lakshmi Rao', '5620 Penn Avenue S, Minneapolis, MN 55419', 'lakshmi.rao@example.com', '612-555-8808', 'Silver', TRUE),
(109, 'James Wilson', '230 Birch Street, Roseville, MN 55113', 'james.wilson@example.com', '651-555-9909', 'Gold', FALSE),
(110, 'Sophia Martinez', '991 Prairie Center Drive, Eden Prairie, MN 55344', 'sophia.martinez@example.com', '952-555-1010', 'Bronze', TRUE);

-- A second INSERT statement to ensure programs do not assume one INSERT per table.

INSERT INTO customers VALUES
(111, 'Arjun Patel', '1432 France Avenue, Edina, MN 55424', 'arjun.patel@example.com', '952-555-1111', 'Gold', TRUE),
(112, 'Olivia Brown', '640 University Avenue, St. Paul, MN 55104', 'olivia.brown@example.com', '651-555-1212', 'Silver', TRUE),
(113, 'David Kim', '2200 Hennepin Avenue, Minneapolis, MN 55405', 'david.kim@example.com', '612-555-1313', 'Bronze', TRUE),
(114, 'Grace Thompson', '70 Central Avenue, Wayzata, MN 55391', 'grace.thompson@example.com', '952-555-1414', 'Gold', TRUE),
(115, 'Mohammed Ali', '8450 Zane Avenue N, Brooklyn Park, MN 55443', 'mohammed.ali@example.com', '763-555-1515', 'Silver', TRUE);

-- -------------------------------------------------------------------
-- ORDERS
-- Repeated customer names and emails must map consistently.
-- -------------------------------------------------------------------

INSERT INTO orders
(order_id, customer_id, customer_name, customer_email, order_date, product_name, quantity, amount)
VALUES
(5001, 101, 'Daniel Carter', 'daniel.carter@example.com', '2026-01-12', 'Wireless Keyboard', 1, 49.99),
(5002, 102, 'Priya Nair', 'priya.nair@example.com', '2026-01-15', 'USB-C Hub', 2, 79.98),
(5003, 101, 'Daniel Carter', 'daniel.carter@example.com', '2026-02-03', 'Laptop Stand', 1, 34.95),
(5004, 107, 'Robert O''Connor', 'robert.oconnor@example.com', '2026-02-14', 'Webcam', 1, 89.00),
(5005, 104, 'Emily Chen', 'emily.chen@example.com', '2026-03-01', 'Noise-Canceling Headphones', 1, 159.99),
(5006, 108, 'Lakshmi Rao', 'lakshmi.rao@example.com', '2026-03-06', 'External SSD', 1, 119.50),
(5007, 102, 'Priya Nair', 'priya.nair@example.com', '2026-03-20', 'Mechanical Keyboard', 1, 99.99),
(5008, 111, 'Arjun Patel', 'arjun.patel@example.com', '2026-04-02', 'Monitor Arm', 2, 129.98),
(5009, 113, 'David Kim', 'david.kim@example.com', '2026-04-18', 'Portable Monitor', 1, 219.00),
(5010, 115, 'Mohammed Ali', 'mohammed.ali@example.com', '2026-05-10', 'Bluetooth Speaker', 1, 69.95),
(5011, 106, 'Aisha Khan', 'aisha.khan@example.com', '2026-05-22', 'Tablet Case', 2, 58.00),
(5012, 104, 'Emily Chen', 'emily.chen@example.com', '2026-06-11', 'Wireless Mouse', 1, 39.99),
(5013, 114, 'Grace Thompson', 'grace.thompson@example.com', '2026-06-25', 'Desk Lamp', 1, 45.50),
(5014, 108, 'Lakshmi Rao', 'lakshmi.rao@example.com', '2026-07-08', 'USB Microphone', 1, 109.99),
(5015, 107, 'Robert O''Connor', 'robert.oconnor@example.com', '2026-07-19', 'HDMI Cable', 3, 29.97);

-- -------------------------------------------------------------------
-- CONTACTS
-- Names, emails, and phone numbers repeat from customers.
-- Notes and contact_type are non-sensitive test values and should remain.
-- -------------------------------------------------------------------

INSERT INTO contacts VALUES
(9001, 101, 'Daniel Carter', 'daniel.carter@example.com', '612-555-1101', 'Primary', 'Prefers email contact'),
(9002, 102, 'Priya Nair', 'priya.nair@example.com', '651-555-2202', 'Primary', 'Call after 5 PM'),
(9003, 104, 'Emily Chen', 'emily.chen@example.com', '952-555-4404', 'Primary', 'No special instructions'),
(9004, 107, 'Robert O''Connor', 'robert.oconnor@example.com', '651-555-7707', 'Primary', 'Customer since 2024'),
(9005, 108, 'Lakshmi Rao', 'lakshmi.rao@example.com', '612-555-8808', 'Primary', 'Prefers text messages'),
(9006, 111, 'Arjun Patel', 'arjun.patel@example.com', '952-555-1111', 'Primary', 'VIP customer'),
(9007, 113, 'David Kim', 'david.kim@example.com', '612-555-1313', 'Primary', 'No special instructions'),
(9008, 115, 'Mohammed Ali', 'mohammed.ali@example.com', '763-555-1515', 'Primary', 'Prefers email contact');

-- -------------------------------------------------------------------
-- SHIPPING
-- Names, addresses, and phones repeat from customers.
-- -------------------------------------------------------------------

INSERT INTO shipping
(shipping_id, order_id, recipient_name, shipping_address, phone, carrier, tracking_status)
VALUES
(7001, 5001, 'Daniel Carter', '1824 Cedar Lane, Minneapolis, MN 55403', '612-555-1101', 'UPS', 'Delivered'),
(7002, 5002, 'Priya Nair', '744 Summit Avenue, St. Paul, MN 55105', '651-555-2202', 'FedEx', 'Delivered'),
(7003, 5003, 'Daniel Carter', '1824 Cedar Lane, Minneapolis, MN 55403', '612-555-1101', 'USPS', 'Delivered'),
(7004, 5004, 'Robert O''Connor', '1777 Grand Avenue, St. Paul, MN 55105', '651-555-7707', 'UPS', 'Delivered'),
(7005, 5005, 'Emily Chen', '412 Oak Ridge Drive, Eden Prairie, MN 55344', '952-555-4404', 'FedEx', 'Delivered'),
(7006, 5006, 'Lakshmi Rao', '5620 Penn Avenue S, Minneapolis, MN 55419', '612-555-8808', 'UPS', 'In Transit'),
(7007, 5008, 'Arjun Patel', '1432 France Avenue, Edina, MN 55424', '952-555-1111', 'FedEx', 'Delivered'),
(7008, 5009, 'David Kim', '2200 Hennepin Avenue, Minneapolis, MN 55405', '612-555-1313', 'USPS', 'In Transit'),
(7009, 5010, 'Mohammed Ali', '8450 Zane Avenue N, Brooklyn Park, MN 55443', '763-555-1515', 'UPS', 'Delivered'),
(7010, 5013, 'Grace Thompson', '70 Central Avenue, Wayzata, MN 55391', '952-555-1414', 'FedEx', 'Processing');

-- -------------------------------------------------------------------
-- Additional statements that should remain unchanged.
-- -------------------------------------------------------------------

UPDATE customers
SET loyalty_level = 'Platinum'
WHERE customer_id = 101;

-- This query contains no PII values and should not be modified.
DELETE FROM orders
WHERE order_id = 9999;

-- End of synthetic test file.
