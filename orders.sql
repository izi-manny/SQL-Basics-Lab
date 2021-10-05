CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id NUMERIC,
    product_name VARCHAR(25),
    product_price NUMERIC,
    quantity NUMERIC
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(718, 'Oranges', 1.75, 3),
(254, 'Salad', 5.79, 1),
(718, 'Kambucha', 4.74, 2),
(312, 'Smoked Salmon', 5.29, 1),
(872, 'Apple', 1.89, 7),
(718, 'Eggs', 4.79, 2),
(762, 'Collard Greens', 3.29, 1);


-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT COUNT (*) product_name FROM orders;

-- Calculate the total order price.
SELECT product_price*quantity AS total_price FROM orders;

-- Calculate the total order price by a single person_id.
SELECT * FROM orders WHERE person_id = 718;