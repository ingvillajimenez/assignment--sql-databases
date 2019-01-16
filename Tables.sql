SHOW DATABASES;

CREATE DATABASE ingvillajimenez;

SHOW DATABASES;

USE ingvillajimenez;

-- Table - People

-- Instructions

-- Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.

-- ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT

CREATE TABLE Person
(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT(3) NOT NULL,
    Height INT(3) NOT NULL,
    City VARCHAR(50) NOT NULL,
    FavoriteColor VARCHAR(50) NOT NULL
);

SHOW TABLES;

DESCRIBE Person;

-- Add 5 different people into the Person database.

-- Remember to not include the ID because it should auto-increment.

INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES
    ('Addy Osmani', 20, 178, 'California', 'yellow'),
    ('Paul Irish', 25, 191, 'Austin', 'orange'),
    ('Eric Elliot', 30, 165, 'Portland', 'blue'),
    ('Jack Wilshere', 18, 189, 'San Francisco', 'purple'),
    ('Ayrton Senna', 32, 170, 'Texas', 'green');

-- List all the people in the Person table by Height from tallest to shortest.

SELECT * FROM Person ORDER BY Height DESC;

-- List all the people in the Person table by Height from shortest to tallest.

SELECT * FROM Person ORDER BY Height ASC;

-- List all the people in the Person table by Age from oldest to youngest.

SELECT * FROM Person ORDER BY Age DESC;

-- List all the people in the Person table older than age 20.

SELECT * FROM Person WHERE Age > 20;

-- List all the people in the Person table that are exactly 18.

SELECT * FROM Person WHERE Age = 18;

-- List all the people in the Person table that are less than 20 and older than 30.

SELECT * FROM Person WHERE Age NOT BETWEEN 20 AND 30;

-- List all the people in the Person table that are not 27 (Use not equals).

SELECT * FROM Person WHERE Age != 27;

-- List all the people in the Person table where their favorite color is not red.

SELECT * FROM Person WHERE FavoriteColor != "red";

-- List all the people in the Person table where their favorite color is not red and is not blue.

SELECT * FROM Person WHERE FavoriteColor != 'red' AND FavoriteColor != 'blue';

-- List all the people in the Person table where their favorite color is orange or green.

SELECT * FROM Person WHERE FavoriteColor = 'orange' OR FavoriteColor = 'green';

-- List all the people in the Person table where their favorite color is orange, green or blue (use IN).

SELECT * FROM Person WHERE FavoriteColor IN ('orange', 'green', 'blue');

-- List all the people in the Person table where their favorite color is yellow or purple (use IN).

SELECT * FROM Person WHERE FavoriteColor IN ('yellow', 'purple');


-- Table - Orders

-- Instructions

-- Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.

CREATE TABLE Orders
(
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    ProductPrice INT NOT NULL,
    Quantity INT NOT NULL, 
    PersonID INT,
    FOREIGN KEY (PersonID) REFERENCES Person(ID)
);

SHOW TABLES;

DESCRIBE Orders;

-- Add 5 Orders to the Orders table.

-- Make orders for at least two different people.
-- PersonID should be different for different people.

INSERT INTO Orders (ProductName, ProductPrice, Quantity, PersonID) VALUES
    ('Clock', 1000, 3, 2),
    ('Bed', 1500, 1, 2),
    ('Smartphone', 800, 2, 2),
    ('TV', 2000, 2, 4),
    ('Hat', 500, 4, 4);

-- Select all the records from the Orders table.

SELECT * FROM Orders;

-- Calculate the total number of products ordered.

SELECT SUM(Quantity) AS 'Total Products' FROM Orders;

-- Calculate the total order price.

SELECT SUM(ProductPrice * Quantity) AS 'Total Price' FROM Orders;

-- Calculate the total order price by a single PersonID.

SELECT PersonID, SUM(ProductPrice * Quantity) AS 'Total Price by Person' FROM Orders GROUP BY PersonID;