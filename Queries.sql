-- Table - Artist

-- Instructions

-- Add 15 new Artists to the Artist table. (ArtistId, Name)

INSERT INTO Artist (ArtistId, Name) VALUES
    (301, 'Rhapsody of fire'),
    (302, 'Hammerfall'),
    (303, 'Megadeth'),
    (304, 'Twisted Siter'),
    (305, 'Def Leppard'),
    (306, 'Ratt'),
    (307, 'Stryper'),
    (308, 'Cinderella'),
    (309, 'Slayer'),
    (310, 'Exodus'),
    (311, 'Death'),
    (312, 'Anthrax'),
    (313, 'Amon Amarth'),
    (314, 'Helloween'),
    (315, 'Grave Digger');

-- Select 10 artists in reverse alphabetical order.

SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;

-- Select 5 artists in alphabetical order.

SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;

-- Select all artists that start with the word "Black".

SELECT * FROM Artist WHERE Name LIKE "Black%";

-- Select all artists that contain the word "Black".

SELECT * FROM Artist WHERE Name LIKE "%Black%";


-- Table - Employee

-- Instructions

-- List all Employee first and last names only that live in Calgary.

SELECT FirstName, LastName from Employee WHERE City = 'Calgary';

-- Find the first and last name and birthdate for the youngest employee.

SELECT FirstName, LastName, MAX(BirthDate) FROM Employee;

-- Find the first and last name and birthdate for the oldest employee.

SELECT FirstName, LastName, MIN(BirthDate) FROM Employee;

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).

SELECT * FROM Employee WHERE ReportsTo = 2;

-- You will need to query the employee table to find the Id for Nancy Edwards

SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards'; 

-- Count how many people live in Lethbridge.

SELECT COUNT(*) AS 'Employees that live in Lethbridge' FROM Employee WHERE City = 'Lethbridge'; 


-- Table - Invoice

-- Instructions

-- Count how many orders were made from the USA.

SELECT COUNT(*) AS 'Orders from the USA' FROM Invoice WHERE BillingCountry = 'USA';

-- Find the largest order total amount.

SELECT MAX(Total) FROM Invoice;

-- Find the smallest order total amount.

SELECT MIN(Total) FROM Invoice;

-- Find all orders bigger than $5.

SELECT * FROM Invoice WHERE Total > 5;

-- Count how many orders were smaller than $5.

SELECT COUNT(*) AS 'Orders smaller than $5' FROM Invoice WHERE Total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).

SELECT COUNT(*) AS 'Orders in CA, TX, or AZ' FROM Invoice WHERE BillingState IN ('CA', 'TX', 'AZ');

-- Get the average total of the orders.

SELECT AVG(Total) AS 'Average total of the orders' FROM Invoice;

-- Get the total sum of the orders.

SELECT SUM(Total) AS 'Total sum of the orders' FROM Invoice;