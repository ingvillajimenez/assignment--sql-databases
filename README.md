# Project Summary

## Sprint 1 | Tables

### Table - People

#### Instructions

+ Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.
  + ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT
+ Add 5 different people into the Person database.
  ```js
  [{
    Name: "Addy Osmani",
    Age: 20,
    Height: 178,
    City: "California",
    FavoriteColor: "yellow"
  }, {
    Name: "Paul Irish",
    Age: 25,
    Height: 191,
    City: "Austin",
    FavoriteColor: "orange"
  }, {
    Name: "Eric Elliot",
    Age: 30,
    Height: 165,
    City: "Portland",
    FavoriteColor: "blue"
  }, {
    Name: "Jack Wilshere",
    Age: 18,
    Height: 189,
    City: "San Francisco",
    FavoriteColor: "purple"
  }, {
    Name: "Ayrton Senna",
    Age: 32,
    Height: 170,
    City: "Texas",
    FavoriteColor: "green"
  }]
  ```
  + Remember to not include the ID because it should auto-increment.
+ List all the people in the Person table by Height from tallest to shortest.
+ List all the people in the Person table by Height from shortest to tallest.
+ List all the people in the Person table by Age from oldest to youngest.
+ List all the people in the Person table older than age 20.
+ List all the people in the Person table that are exactly 18.
+ List all the people in the Person table that are less than 20 and older than 30.
+ List all the people in the Person table that are not 27 (Use not equals).
+ List all the people in the Person table where their favorite color is not red.
+ List all the people in the Person table where their favorite color is not red and is not blue.
+ List all the people in the Person table where their favorite color is orange or green.
+ List all the people in the Person table where their favorite color is orange, green or blue (use IN).
+ List all the people in the Person table where their favorite color is yellow or purple (use IN).

### Table - Orders

#### Instructions

+ Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.
+ Add 5 Orders to the Orders table.
  + Make orders for at least two different people.
  + PersonID should be different for different people.
+ Select all the records from the Orders table.
+ Calculate the total number of products ordered.
+ Calculate the total order price.
+ Calculate the total order price by a single PersonID.

## Sprint 2 | Queries

We'll make use of a handy online tool called [Chinook](https://chinook.ml/) that we'll use to write SQL online.

On the left are the Tables with their fields, the right is where we will be writing our queries, and the bottom is where we will see our results.

Any new tables or records that we add into the database will be removed after you refresh the page.

### Table - Artist

#### Instructions

+ Add 15 new Artists to the Artist table. (ArtistId, Name)
+ Select 10 artists in reverse alphabetical order.
+ Select 5 artists in alphabetical order.
+ Select all artists that start with the word "Black".
+ Select all artists that contain the word "Black".

### Table - Employee

#### Instructions

+ List all Employee first and last names only that live in Calgary.
+ Find the first and last name and birthdate for the youngest employee.
+ Find the first and last name and birthdate for the oldest employee.
+ Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
+ You will need to query the employee table to find the Id for Nancy Edwards
+ Count how many people live in Lethbridge.

### Table - Invoice

#### Instructions

+ Count how many orders were made from the USA.
+ Find the largest order total amount.
+ Find the smallest order total amount.
+ Find all orders bigger than $5.
+ Count how many orders were smaller than $5.
+ Count how many orders were in CA, TX, or AZ (use IN).
+ Get the average total of the orders.
+ Get the total sum of the orders.