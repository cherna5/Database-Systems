DROP DATABASE IF EXISTS Restaurant;

-- Your code starts here
CREATE DATABASE Restaurant;
USE Restaurant;

drop table IF EXISTS MenuCategories;
drop table IF EXISTS Dishes;
drop table IF EXISTS Cuisine;
drop table IF EXISTS Recipes;
drop table IF EXISTS Ingredients;
drop table IF EXISTS IngredientList;
drop table IF EXISTS Stock;
drop table IF EXISTS Allergies;
drop table IF EXISTS AllergyContains;





create table MenuCategories
(
   MenuID int(10) AUTO_INCREMENT,
   MenuCategory varchar(20),
   primary key (MenuID)
);

create table Dishes
(
   DishID int(10) AUTO_INCREMENT,
   RecipeID int(10),
   MenuID int(10),
   Price numeric(10,2),
   primary key (DishID),
   foreign key (MenuID) references MenuCategories(MenuID) on delete cascade
);



create table Cuisine
(
   CuisineID int(10) AUTO_INCREMENT,
   CuisineName varchar(20),
   primary key (CuisineID)
);



create table Recipes
(
   RecipeID int(10) AUTO_INCREMENT,
   RecipeName varchar(20) UNIQUE,
   CuisineID int(10),
   primary key (RecipeID),
   foreign key (CuisineID) references Cuisine(CuisineID) on delete cascade
);





create table Ingredients
(
   IngredientID int(10) AUTO_INCREMENT,
   IngredientName varchar(20) UNIQUE,
   primary key (IngredientID)
);


create table IngredientList
(
   RecipeID int(10),
   IngredientID int(10),
   Quantity int(10),
   QuantityType varchar(20),
   foreign key (RecipeID) references Recipes(RecipeID) on delete cascade,
   foreign key (IngredientID) references Ingredients(IngredientID) on delete cascade,
   primary key (RecipeID,IngredientID)

);


create table Stock
(
   IngredientID int(10),
   Quantity int(10),
   QuantityType varchar(20),
   foreign key (IngredientID) references Ingredients(IngredientID) on delete cascade
);



create table Allergies
(
   AllergyID int(10) AUTO_INCREMENT,
   AllergyName varchar(20),
   primary key (AllergyID)
);


create table AllergyContains
(
   AllergyID int(10),
   IngredientID int(10),
   foreign key (AllergyID) references Allergies(AllergyID) on delete cascade,
   foreign key (IngredientID) references Ingredients(IngredientID) on delete cascade
);



-- Your code ends here 

show tables;


