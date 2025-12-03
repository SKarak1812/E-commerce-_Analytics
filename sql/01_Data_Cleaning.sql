-- Remove canceled orders (InvoiceNo starts with 'C')
DELETE FROM orders_raw
WHERE InvoiceNo LIKE 'C%';

-- Remove negative or zero quantities
DELETE FROM orders_raw
WHERE Quantity <= 0;

-- Remove missing customer IDs
DELETE FROM orders_raw
WHERE CustomerID IS NULL;
