use Restaurant;
delete from MenuCategories;
delete from Dishes;
delete from Cuisine;
delete from Recipes;
delete from Ingredients;
delete from IngredientList;
delete from Stock;
delete from Allergies;
delete from AllergyContains;






-- your code starts here
LOAD DATA INFILE '/home/codio/workspace/MenuType.csv' INTO TABLE MenuCategories
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/Dishes.csv' INTO TABLE Dishes
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/Cuisine.csv' INTO TABLE Cuisine
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/Recipes.csv' INTO TABLE Recipes
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/Ingredients.csv' INTO TABLE Ingredients
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/IngredientList.csv' INTO TABLE IngredientList
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/Stock.csv' INTO TABLE Stock
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/Allergies.csv' INTO TABLE Allergies
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
  LOAD DATA INFILE '/home/codio/workspace/AllergyContains.csv' INTO TABLE AllergyContains
  FIELDS TERMINATED BY ','
  ENCLOSED BY '"' 
  ESCAPED BY '\\'
  LINES TERMINATED BY '\n'
  IGNORE 1 LINES
  ;
  
 
-- your code ends here

select * from MenuCategories;
select * from Dishes;
select * from Cuisine;
select * from Recipes;
select * from Ingredients;
select * from IngredientList;
select * from Stock;
select * from Allergies;
select * from AllergyContains;


