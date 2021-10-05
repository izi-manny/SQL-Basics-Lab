-- invoice table already exists in the Devmountain Postgres sandbox

-- Count how many orders were made from the USA.

SELECT COUNT (*) FROM invoice WHERE billing_country = 'USA';  -- 91

-- Find the largest order total amount.

SELECT MAX(total) FROM invoice; -- 26

-- Find the smallest order total amount.

SELECT MIN(total) FROM invoice; -- 1

-- Find all orders bigger than $5.

SELECT * FROM invoice WHERE total > 5;

-- Count how many orders were smaller than $5.

SELECT * FROM invoice WHERE total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).

SELECT * FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Get the average total of the orders.

SELECT AVG(total) FROM invoice; -- 5.7063

-- Get the total sum of the orders.

SELECT SUM(total) FROM invoice; -- 2351

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
SELECT * FROM invoice WHERE invoice_id = 5; -- CHeck the value before updating

UPDATE invoice SET total = 24 WHERE invoice_id = 5;

SELECT * FROM invoice WHERE invoice_id = 5; -- Check the value after updating

-- Delete the invoice with an invoice_id of 1.

DELETE FROM invoice WHERE invoice_id = 1;