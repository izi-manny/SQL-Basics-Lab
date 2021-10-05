CREATE TABLE person(
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    age NUMERIC,
    height NUMERIC,
    city VARCHAR(20),
    favorite_color VARCHAR(15)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES 
('Emmanuel', 31, 175, 'Philadelphia', 'Blue'),
('Sriram', 25, 175, 'San Jose', 'Green'),
('John', 22, 180, 'Houston', 'Red'),
('Candy', 30, 165, 'Boston', 'Pink'),
('Pearl', 28, 170, 'phoenix', 'Red');


-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person ORDER BY height DESC; -- Order by height in descending order

-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person ORDER BY height ASC; -- Order by height in ascending order

-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person ORDER BY age ASC;

-- Select all the people in the person table older than age 20.
SELECT * FROM person WHERE age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 20 AND age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE age <> 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE favorite_color <> 'Red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE favorite_color NOT IN ('Red', 'Blue');

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');