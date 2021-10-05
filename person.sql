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

SELECT * FROM person ORDER BY height DESC; -- Order by height in descending order

SELECT * FROM person ORDER BY height ASC; -- Order by height in ascending order